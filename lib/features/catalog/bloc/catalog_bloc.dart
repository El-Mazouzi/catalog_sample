import 'dart:async';

import 'package:catalog_sample/features/catalog/domain/entities/shop_entity.dart';
import 'package:catalog_sample/core/enums/status_enum.dart';
import 'package:catalog_sample/core/utils/log.dart';
import 'package:catalog_sample/main.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:catalog_sample/features/catalog/catalog.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc(this.repository) : super(const CatalogState()) {
    on<StartListingToCatalog>(_onStartListingToCatalog);
    on<StopListingToCatalog>(_onStopListingToCatalog);
    on<CatalogChanged>(_onCatalogChanged);
    on<CatalogFailed>(_onCatalogFailed);
  }
  final CatalogRepository repository;
  StreamSubscription<CatalogEntity?>? streamSub;

  @override
  Future<void> close() {
    logInfo('CartBloc:close');
    streamSub?.cancel();
    streamSub = null;
    return super.close();
  }

  FutureOr<void> _onStartListingToCatalog(
    StartListingToCatalog event,
    Emitter<CatalogState> emit,
  ) {
    logInfo('CatalogBloc:_onStartListingToCatalog');
    // ignore null and current catalog
    if (event.catalogId == null ||
        event.catalogId == catalogService.catalogId) {
      return Future.value();
    }

    emit(state.copyWith(status: Status.showLoading));

    resetStreamSubscriptions(emit);
    streamSub = repository.watchCatalog(event.catalogId).listen(
      (event) {
        logWarning('EVENT:watchCatalog');
        if (event != null) {
          add(
            CatalogChanged(
              catalog: event,
            ),
          );
        } else {
          add(CatalogFailed());
        }
      },
    );
  }

  void resetStreamSubscriptions(Emitter<CatalogState> emit) {
    streamSub?.cancel();
    streamSub = null;
    // emit(const CatalogState());
  }

  FutureOr<void> _onStopListingToCatalog(
    StopListingToCatalog event,
    Emitter<CatalogState> emit,
  ) {
    logInfo('CatalogBloc:_onStopListingToCatalog');
    streamSub?.cancel();
    streamSub = null;
    emit(const CatalogState());
    repository.stopListingToCatalog();
  }

  FutureOr<void> _onCatalogChanged(
    CatalogChanged event,
    Emitter<CatalogState> emit,
  ) {
    logInfo('CatalogBloc:_onCatalogChanged');
    catalogService.catalog = event.catalog;
    emit(
      CatalogState(
        catalog: event.catalog,
        status: Status.success,
      ),
    );
  }

  FutureOr<void> _onCatalogFailed(
    CatalogFailed event,
    Emitter<CatalogState> emit,
  ) {
    emit(
      const CatalogState(
        status: Status.failure,
      ),
    );
  }
}
