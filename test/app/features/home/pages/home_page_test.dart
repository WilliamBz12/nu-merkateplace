import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/annotations.dart';

import 'package:numarketplace/app/features/home/pages/home_page.dart';
import 'package:numarketplace/app/features/home/repostories/offers_repository.dart';
import 'package:numarketplace/app/shared/repositories/customer_repository.dart';

import 'home_page_test.mocks.dart';
import 'mocks.dart';

@GenerateMocks([
  OffersRepository,
  CustomerRepository,
  NavigatorObserver,
])
void main() {
  setUpAll(TestWidgetsFlutterBinding.ensureInitialized);

  final mockCustomerRepository = MockCustomerRepository();
  final mockOffersRepository = MockOffersRepository();

  testWidgets(
    'should render widgets in home page',
    (tester) async {
      final widget = await requestsMock(
        mockCustomerRepository,
        mockOffersRepository,
        HomePage(),
      );

      await tester.pumpWidget(widget);

      final balanceComponent = find.byKey(Key("balance"));
      final offers = find.byKey(Key("offers"));

      expect(balanceComponent, findsOneWidget);
      expect(offers, findsOneWidget);
    },
  );

  testWidgets(
    'should show offers and info when load',
    (tester) async {
      final widget = await requestsMock(
        mockCustomerRepository,
        mockOffersRepository,
        HomePage(),
      );

      await tester.pumpWidget(widget);

      await tester.pumpAndSettle();
      final customerComponent = find.byKey(Key("customerInfo"));

      final offers = find.byKey(Key("gridOffers"));

      expect(offers, findsOneWidget);

      expect(customerComponent, findsOneWidget);
    },
  );
}
