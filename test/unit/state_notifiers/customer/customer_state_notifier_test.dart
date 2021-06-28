import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:numarketplace/app/shared/models/customer_model.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';
import 'package:numarketplace/app/shared/models/product_model.dart';
import 'package:numarketplace/app/shared/repositories/customer_repository.dart';
import 'package:numarketplace/app/shared/state_notifiers/customer/customer_state_notifier.dart';

import 'customer_state_notifier_test.mocks.dart';

@GenerateMocks([CustomerRepository])
void main() {
  final customerRepository = MockCustomerRepository();

  var customer = CustomerModel(
    balance: 100,
    name: "Jerry Smith",
  );

  final offer = OfferModel(
    price: 100,
    product: ProductModel(
        name: "product", description: "description", image: "image"),
    id: "offer",
  );

  test('initial state', () {
    expect(
      CustomerStateNotifier(customerRepository).debugState,
      equals(CustomerState.initial()),
    );
  });

  group('fetch customer', () {
    test('should return a customer when try fetch', () async {
      final customerStateNotifier = CustomerStateNotifier(customerRepository);

      when(customerRepository.fetch())
          .thenAnswer((_) => Future.value(Right(customer)));

      customerStateNotifier.load();

      await Duration(seconds: 1);

      expect(
        customerStateNotifier.debugState,
        equals(CustomerState.success(customer)),
      );
    });

    test('should trhow an error when try fetch customer', () async {
      final customerStateNotifier = CustomerStateNotifier(customerRepository);

      when(customerRepository.fetch())
          .thenAnswer((_) => Future.value(Left("Error")));

      customerStateNotifier.load();

      await Duration(seconds: 1);
      expect(
        customerStateNotifier.debugState,
        equals(CustomerState.failure("Error")),
      );
    });
  });

  test('should return a customer with new balance when was a purchase',
      () async {
    final customerStateNotifier = CustomerStateNotifier(customerRepository);

    when(customerRepository.fetch())
        .thenAnswer((_) => Future.value(Right(customer)));

    customerStateNotifier.load();

    await Duration(seconds: 1);

    customerStateNotifier.addNewPurchase(offer);

    await Duration(seconds: 1);

    expect(
      (customerStateNotifier.debugState as CustomerSuccess).customer.balance,
      equals(customer.balance - offer.price),
    );
  });
}
