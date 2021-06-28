import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numarketplace/app/shared/state_notifiers/customer/customer_state_notifier.dart';

import '../../../../shared/models/offer_model.dart';
import '../../repositories/purchase_repository.dart';

part 'purchase_state.dart';
part 'purchase_state_notifier.freezed.dart';

class PurchaseStateNotifier extends StateNotifier<PurchaseState> {
  final PurchaseRepository _repository;
  final CustomerStateNotifier customerStateNotifier;
  PurchaseStateNotifier(this._repository, this.customerStateNotifier)
      : super(PurchaseState.initial());

  void load(OfferModel offer) async {
    state = PurchaseState.loading();
    final result = await _repository.purchase(offer);

    result.fold(
      (error) => state = PurchaseState.failure(error),
      (data) {
        customerStateNotifier.addNewPurchase(offer);
        state = PurchaseState.success(offer);
      },
    );
  }
}
