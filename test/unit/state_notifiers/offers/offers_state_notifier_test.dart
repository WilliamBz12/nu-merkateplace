import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:numarketplace/app/features/home/repostories/offers_repository.dart';
import 'package:numarketplace/app/features/home/state_notifiers/offers/offers_state_notifier.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';
import 'package:numarketplace/app/shared/models/product_model.dart';

import 'offers_state_notifier_test.mocks.dart';

@GenerateMocks([OffersRepository])
void main() {
  final offersRepository = MockOffersRepository();

  final offer1 = OfferModel(
    price: 100,
    product: ProductModel(
        name: "product", description: "description", image: "image"),
    id: "offer1",
  );
  final offer2 = OfferModel(
    price: 100,
    product: ProductModel(
        name: "product", description: "description", image: "image"),
    id: "offer2",
  );

  final allOffers = <OfferModel>[offer1, offer2];

  test('initial state', () {
    expect(
      OffersStateNotifier(offersRepository).debugState,
      equals(OffersState.initial()),
    );
  });

  group('fetch offers', () {
    test('should return a list of offer when try fetch all', () async {
      final offersStateNotifier = OffersStateNotifier(offersRepository);

      when(offersRepository.fetchAll())
          .thenAnswer((_) => Future.value(Right(allOffers)));

      offersStateNotifier.load();

      await Duration(seconds: 1);

      expect(
        offersStateNotifier.debugState,
        equals(OffersState.success(allOffers)),
      );
    });

    test('should trhow an error when try fetch all offers', () async {
      final offersStateNotifier = OffersStateNotifier(offersRepository);

      when(offersRepository.fetchAll())
          .thenAnswer((_) => Future.value(Left("Error")));

      offersStateNotifier.load();

      await Duration(seconds: 1);
      expect(
        offersStateNotifier.debugState,
        equals(OffersState.failure("Error")),
      );
    });
  });
}
