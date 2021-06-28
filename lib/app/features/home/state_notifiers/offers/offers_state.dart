part of 'offers_state_notifier.dart';

@freezed
abstract class OffersState with _$OffersState {
  const factory OffersState.initial() = OffersInitial;
  const factory OffersState.loading() = OffersLoading;
  const factory OffersState.success(List<OfferModel> offers) = OffersSuccess;
  const factory OffersState.failure(String error) = OffersFailure;
}
