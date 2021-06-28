import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:numarketplace/app/features/offer/repositories/purchase_repository.dart';
import 'package:numarketplace/app/features/offer/state_notifiers/purchase/purchase_state_notifier.dart';
import 'package:numarketplace/app/shared/models/customer_model.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';
import 'package:numarketplace/app/shared/models/product_model.dart';

import 'purchase_state_notifier_test.mocks.dart';

@GenerateMocks([PurchaseRepository])
void main() {
  final purchaseRepository = MockPurchaseRepository();

  final offer = OfferModel(
    price: 100,
    product: ProductModel(
        name: "product", description: "description", image: "image"),
    id: "offer1",
  );
  final customer = CustomerModel(balance: 100, name: "Jerry Smith");

  test('initial state', () {
    expect(
      PurchaseStateNotifier(purchaseRepository).debugState,
      equals(PurchaseState.initial()),
    );
  });

  group('purchase', () {
    test('should return a list of offer when try fetch all', () async {
      final purchaseStateNotifier = PurchaseStateNotifier(purchaseRepository);

      when(purchaseRepository.purchase(offer))
          .thenAnswer((_) => Future.value(Right(customer)));

      purchaseStateNotifier.load(offer);

      await Duration(seconds: 1);

      expect(
        purchaseStateNotifier.debugState,
        equals(PurchaseState.success(offer)),
      );
    });

    test('should trhow an error when try purchase', () async {
      final purchaseStateNotifier = PurchaseStateNotifier(purchaseRepository);

      when(purchaseRepository.purchase(offer))
          .thenAnswer((_) => Future.value(Left("Error")));

      purchaseStateNotifier.load(offer);

      await Duration(seconds: 1);
      expect(
        purchaseStateNotifier.debugState,
        equals(PurchaseState.failure("Error")),
      );
    });
  });
}
