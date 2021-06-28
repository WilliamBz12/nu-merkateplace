import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../shared/models/offer_model.dart';
import '../../repostories/offers_repository.dart';

part 'offers_state.dart';
part 'offers_state_notifier.freezed.dart';

class OffersStateNotifier extends StateNotifier<OffersState> {
  final OffersRepository _repository;
  OffersStateNotifier(this._repository) : super(OffersState.initial());

  void load() async {
    state = OffersState.loading();
    final result = await _repository.fetchAll();

    result.fold(
      (error) => state = OffersState.failure(error),
      (data) => state = OffersState.success(data),
    );
  }
}
