import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/customer_model.dart';
import '../../models/offer_model.dart';
import '../../repositories/customer_repository.dart';

part 'customer_state.dart';
part 'customer_state_notifier.freezed.dart';

class CustomerStateNotifier extends StateNotifier<CustomerState> {
  CustomerStateNotifier(CustomerRepository repository)
      : _repository = repository,
        super(CustomerState.initial());

  final CustomerRepository _repository;

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
