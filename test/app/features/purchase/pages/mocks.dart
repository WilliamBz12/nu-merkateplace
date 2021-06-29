import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:numarketplace/app/app_provider.dart';
import 'package:numarketplace/app/features/purchase/pages/purchase_page.dart';
import 'package:numarketplace/app/features/purchase/purchase_provider.dart';
import 'package:numarketplace/app/features/purchase/state_notifiers/purchase/purchase_state_notifier.dart';
import 'package:numarketplace/app/shared/models/customer_model.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';
import 'package:numarketplace/app/shared/models/product_model.dart';
import 'package:numarketplace/app/shared/state_notifiers/customer/customer_state_notifier.dart';

import 'purchase_page_test.mocks.dart';

final customer = CustomerModel(name: "Jerry Smith", balance: 200);
final offer = OfferModel(
  price: 100,
  product:
      ProductModel(name: "product", description: "description", image: "image"),
  id: "offer",
);

Future<Widget> requestsMock(
  MockCustomerRepository mockCustomerRepository,
  MockPurchaseRepository mockPurchaseRepository,
) async {
  final mockCustomerStateNotifier =
      CustomerStateNotifier(mockCustomerRepository);

  final mockPurchaseStateNotifier = PurchaseStateNotifier(
    mockPurchaseRepository,
    mockCustomerStateNotifier,
  );

  final widget = ProviderScope(
    overrides: [
      purchaseStateNotifierProvider.overrideWithProvider(
        StateNotifierProvider.autoDispose(
          (ref) => mockPurchaseStateNotifier,
        ),
      ),
      customerStateNotifierProvider.overrideWithProvider(
        StateNotifierProvider(
          (ref) => mockCustomerStateNotifier,
        ),
      ),
    ],
    child: MaterialApp(
      home: PurchasePage(offer: offer),
    ),
  );

  when(mockCustomerRepository.fetch()).thenAnswer(
    (_) async => Right(customer),
  );

  when(mockPurchaseRepository.purchase(offer))
      .thenAnswer((_) async => Left("Error"));

  mockCustomerStateNotifier.load();

  return widget;
}
