import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numarketplace/app/shared/models/customer_model.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';
import 'package:numarketplace/app/shared/repositories/customer_repository.dart';

part 'customer_state.dart';
part 'customer_state_notifier.freezed.dart';

class CustomerStateNotifier extends StateNotifier<CustomerState> {
  final CustomerRepository _repository;
  CustomerStateNotifier(this._repository) : super(CustomerState.initial());

  void load() async {
    state = CustomerState.loading();
    final result = await _repository.fetch();

    result.fold(
      (error) => state = CustomerState.failure(error),
      (data) => state = CustomerState.success(data),
    );
  }

  void addNewPurchase(OfferModel offer) {
    final currentCustomer = (state as CustomerSuccess).customer;
    final newCustomer = currentCustomer.copyWith(
        balance: currentCustomer.balance - offer.price);
    state = CustomerState.success(newCustomer);
  }
}
