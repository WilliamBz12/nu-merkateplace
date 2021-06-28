part of 'purchase_state_notifier.dart';

@freezed
abstract class PurchaseState with _$PurchaseState {
  const factory PurchaseState.initial() = PurchaseInitial;
  const factory PurchaseState.loading() = PurchaseLoading;
  const factory PurchaseState.success(OfferModel offer) = PurchaseSuccess;
  const factory PurchaseState.failure(String error) = PurchaseFailure;
}
