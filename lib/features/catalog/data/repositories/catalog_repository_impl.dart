import 'package:catalog_sample/features/catalog/catalog.dart';

class CatalogRepositoryImpl implements CatalogRepository {
  CatalogRepositoryImpl(this.dataSource);

  final CatalogDataSource dataSource;

  @override
  Stream<CatalogEntity?> watchCatalog(String? catalogId) {
    return dataSource.watchCatalog(catalogId);
  }

  @override
  Future<void> stopListingToCatalog() {
    return dataSource.stopListingToCatalog();
  }
}
