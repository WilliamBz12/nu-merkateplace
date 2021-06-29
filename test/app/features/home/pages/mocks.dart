import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:numarketplace/app/app_provider.dart';
import 'package:numarketplace/app/features/home/home_provider.dart';
import 'package:numarketplace/app/features/home/state_notifiers/offers/offers_state_notifier.dart';
import 'package:numarketplace/app/shared/models/customer_model.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';
import 'package:numarketplace/app/shared/models/product_model.dart';
import 'package:numarketplace/app/shared/state_notifiers/customer/customer_state_notifier.dart';

import 'home_page_test.mocks.dart';

final offer1 = OfferModel(
  price: 100,
  product: ProductModel(
    name: "product",
    description: "description",
    image: "",
  ),
  id: "offer1",
);

final offer2 = OfferModel(
  price: 100,
  product: ProductModel(
    name: "product",
    description: "description",
    image: "",
  ),
  id: "offer2",
);

final allOffers = <OfferModel>[offer1, offer2];

final customer = CustomerModel(name: "Jerry Smith", balance: 100);

Future<Widget> requestsMock(
  MockCustomerRepository mockCustomerRepository,
  MockOffersRepository mockOffersRepository,
  Widget page,
) async {
  final mockCustomerStateNotifier =
      CustomerStateNotifier(mockCustomerRepository);

  final mockOffersStateNotifier = OffersStateNotifier(mockOffersRepository);

  final widget = ProviderScope(
    overrides: [
      offersStateNotifierProvider.overrideWithProvider(
        StateNotifierProvider(
          (ref) => mockOffersStateNotifier,
        ),
      ),
      customerStateNotifierProvider.overrideWithProvider(
        StateNotifierProvider(
          (ref) => mockCustomerStateNotifier,
        ),
      ),
    ],
    child: MaterialApp(home: page),
  );

  when(mockCustomerRepository.fetch()).thenAnswer(
    (_) async => Right(customer),
  );

  when(mockOffersRepository.fetchAll()).thenAnswer(
    (_) async => Right(allOffers),
  );

  return widget;
}
