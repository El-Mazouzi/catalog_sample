part of 'catalog_bloc.dart';

class CatalogState extends Equatable {
  const CatalogState({
    this.catalog,
    this.status = Status.initial,
    this.msg,
  });
  final CatalogEntity? catalog;
  final Status status;
  final String? msg;
  @override
  List<Object?> get props => [catalog, status, msg];

  List<ShopEntity> get shops => catalog?.shops ?? [];
  List<String> get cuisines {
    final list = <String>[];
    for (final element in shops) {
      list.addAll(element.cuisines);
    }
    return list.toSet().toList();
  }

  CatalogState copyWith({
    CatalogEntity? catalog,
    Status? status,
    String? msg,
  }) {
    return CatalogState(
      catalog: catalog ?? this.catalog,
      status: status ?? Status.initial,
      msg: msg,
    );
  }
}
