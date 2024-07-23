import 'package:catalog_sample/features/catalog/catalog.dart';
import 'package:catalog_sample/features/catalog/domain/entities/shop_entity.dart';
import 'package:catalog_sample/core/flexible/schemas/schemas.dart';
import 'package:catalog_sample/core/utils/log.dart';
import 'package:collection/collection.dart';
import 'package:realm/realm.dart';

class CatalogRealmDataSourceImpl implements CatalogDataSource {
  CatalogRealmDataSourceImpl({required this.catalogService});

  final CatalogService catalogService;

  // subscriptions names
  final catalogSubscriptionName = 'getCatalog';
  final getShopsSubscriptionName = 'getShopsForCatalog';

  @override
  Future<void> stopListingToCatalog() async {
    catalogService
      ..catalog = null
      ..catalogId = null
      ..flexibleSync?.subscriptions.update((mutableSubscriptions) {
        mutableSubscriptions.removeByName(catalogSubscriptionName);
      });
    await catalogService.close();
  }

  @override
  Stream<CatalogEntity?> watchCatalog(String? catalogId) async* {
    // Subscribe to Catalog and Shops
    logInfo('CatalogRealmDataSourceImpl:watchCatalogAndShops');
    try {
      final stopwatch = Stopwatch()..start();
      catalogService.catalogId = catalogId;

      // Create a query for Catalog
      final catalogQuery = catalogService.flexibleSync?.query<CatalogV3>(
        r'_id = $0',
        [catalogId],
      );

      if (catalogQuery != null) {
        logInfo('Catalog query created');

        // Subscribe to the Catalog query
        catalogService.flexibleSync?.subscriptions.update(
          (mutableSubscriptions) {
            mutableSubscriptions.add(
              catalogQuery,
              name: catalogSubscriptionName,
              update: true,
            );
          },
        );

        await catalogService.flexibleSync?.subscriptions
            .waitForSynchronization();
        logSuccess(
          'CatalogRealmDataSourceImpl:id:$catalogId waitForSync: ${stopwatch.elapsed.inMilliseconds}ms',
        );
        await catalogService.flexibleSync?.syncSession.waitForDownload();
        logSuccess(
          'CatalogRealmDataSourceImpl:id:$catalogId waitForDownload: ${stopwatch.elapsed.inMilliseconds}ms',
        );

        // Yield changes from the Catalog query
        await for (final catalogEvent in catalogQuery.changes) {
          logSuccess(
            'Catalog event received: ${catalogEvent.results.firstOrNull?.id}',
          );

          // This loop runs each time there's a change in the catalogQuery results
          final catalog = catalogEvent.results.firstOrNull?.toEntity;

          if (catalog != null) {
            logInfo('Catalog entity extracted: ${catalog.shops.length}');

            // Extract shop IDs from the Catalog
            final shopIds = <String>[
              ...catalog.ids.whereNotNull().map(
                    (e) => e.hexString,
                  ),
            ];

            // Create a query for Shops using the extracted shop IDs
            final shopQuery = catalogService.flexibleSync?.query<Shop>(
              r'_id IN $0',
              [shopIds.map(ObjectId.fromHexString).toSet()],
            );

            if (shopQuery != null) {
              // Subscribe to the Shops query
              logInfo('Subscribing to shops');
              catalogService.flexibleSync?.subscriptions
                  .update((mutableSubscriptions) {
                mutableSubscriptions.add(
                  shopQuery,
                  name: getShopsSubscriptionName,
                  update: true,
                );
              });

              await catalogService.flexibleSync?.subscriptions
                  .waitForSynchronization();
              logSuccess(
                '''CatalogRealmDataSourceImpl: shops:${shopIds.length} wait for Sync: ${stopwatch.elapsed.inMilliseconds}ms''',
              );
              await catalogService.flexibleSync?.syncSession.waitForDownload();
              logSuccess(
                '''CatalogRealmDataSourceImpl: shops:${shopIds.length} wait for Download: ${stopwatch.elapsed.inMilliseconds}ms''',
              );

              // Yield changes from the Shops query
              yield* shopQuery.changes.map((shopEvent) {
                logSuccess('Shop event received');
                final shops =
                    shopEvent.results.map((e) => e.toShopEntity).toList();

                /// the delivery price is available in the catalog entity
                /// so we have to merge them with the shops
                final mergedShops = _mergeShops(
                  shopsFromCatalog: catalog.shops,
                  shops: shops,
                );

                return catalog.copyWith(shops: mergedShops);
              });
            } else {
              yield catalog;
            }
          } else {
            logInfo('No catalog entity found in event');
            yield null;
          }
        }
      } else {
        logError('Catalog query creation failed for catalogId: $catalogId');
      }
    } catch (e) {
      logError('CatalogRealmDataSourceImpl:watchCatalogAndShops $e');
    }
  }

  List<ShopEntity> _mergeShops({
    required List<ShopEntity> shopsFromCatalog,
    required List<ShopEntity> shops,
  }) {
    final temp = <ShopEntity>[];
    for (final shop in shops) {
      final tempShop = shopsFromCatalog.firstWhereOrNull(
        (element) => element.id == shop.id,
      );
      temp.add(
        shop.copyWith(
          deliveryTime: tempShop?.deliveryTime,
          deliveryPrice: tempShop?.deliveryPrice,
          distance: tempShop?.distance,
          deliveryTimeVal: tempShop?.deliveryTimeVal,
        ),
      );
    }
    return temp;
  }
}
