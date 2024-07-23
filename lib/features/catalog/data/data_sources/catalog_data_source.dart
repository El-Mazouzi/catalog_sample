import 'package:catalog_sample/features/catalog/catalog.dart';

abstract class CatalogDataSource {
  Stream<CatalogEntity?> watchCatalog(String? catalogId);

  Future<void> stopListingToCatalog();
}
