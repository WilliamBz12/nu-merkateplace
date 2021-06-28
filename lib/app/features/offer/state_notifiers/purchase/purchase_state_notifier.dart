import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numarketplace/app/features/offer/repository/purchase_repository.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';

part 'purchase_state.dart';
part 'purchase_state_notifier.freezed.dart';

class PurchaseStateNotifier extends StateNotifier<PurchaseState> {
  final PurchaseRepository _repository;
  PurchaseStateNotifier(this._repository) : super(PurchaseState.initial());

  void load(OfferModel offer) async {
    state = PurchaseState.loading();
    final result = await _repository.purchase(offer);

    result.fold(
      (error) => state = PurchaseState.failure(error),
      (data) => state = PurchaseState.success(offer),
    );
  }
}
