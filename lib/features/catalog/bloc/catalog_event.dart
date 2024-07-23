part of 'catalog_bloc.dart';

sealed class CatalogEvent extends Equatable {
  const CatalogEvent();

  @override
  List<Object?> get props => [];
}

class StartListingToCatalog extends CatalogEvent {
  const StartListingToCatalog({required this.catalogId});

  final String? catalogId;

  @override
  List<Object?> get props => [catalogId];
}

class StopListingToCatalog extends CatalogEvent {}

class CatalogChanged extends CatalogEvent {
  const CatalogChanged({required this.catalog});

  final CatalogEntity? catalog;
}

class CatalogFailed extends CatalogEvent {}
