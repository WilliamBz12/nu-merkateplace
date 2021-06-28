part of 'customer_state_notifier.dart';

@freezed
abstract class CustomerState with _$CustomerState {
  const factory CustomerState.initial() = CustomerInitial;
  const factory CustomerState.loading() = CustomerLoading;
  const factory CustomerState.success(CustomerModel customer) = CustomerSuccess;
  const factory CustomerState.failure(String error) = CustomerFailure;
}
