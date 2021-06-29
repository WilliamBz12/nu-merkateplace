import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:numarketplace/app/features/purchase/repositories/purchase_repository.dart';
import 'package:numarketplace/app/shared/repositories/customer_repository.dart';

import 'mocks.dart';
import 'purchase_page_test.mocks.dart';

@GenerateMocks([
  CustomerRepository,
  PurchaseRepository,
])
void main() {
  setUpAll(TestWidgetsFlutterBinding.ensureInitialized);

  final mockCustomerRepository = MockCustomerRepository();
  final mockPurchaseRepository = MockPurchaseRepository();

  testWidgets(
    'should render widgets in Purchase Page',
    (tester) async {
      final widget = await requestsMock(
        mockCustomerRepository,
        mockPurchaseRepository,
      );

      await tester.pumpWidget(widget);

      final purchaseButton = find.byKey(Key("purchase"));
      final offerContent = find.byKey(Key("offerContent"));

      expect(purchaseButton, findsOneWidget);
      expect(offerContent, findsOneWidget);
    },
  );

  testWidgets(
    'should throw a message when try buy an offer',
    (tester) async {
      final widget = await requestsMock(
        mockCustomerRepository,
        mockPurchaseRepository,
      );

      await tester.pumpWidget(widget);

      final purchaseButton = find.byKey(Key("purchase"));

      await tester.tap(purchaseButton);

      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);

      expect(find.text("Error"), findsOneWidget);
    },
  );

  testWidgets(
    'should back to home when try buy an offer is success',
    (tester) async {
      final widget = await requestsMock(
        mockCustomerRepository,
        mockPurchaseRepository,
      );

      when(mockPurchaseRepository.purchase(offer))
          .thenAnswer((realInvocation) async => Right(customer));

      await tester.pumpWidget(widget);

      final purchaseButton = find.byKey(Key("purchase"));

      await tester.tap(purchaseButton);

      await tester.pump(Duration(seconds: 3));

      expect(find.text("You bought a ${offer.product.name}"), findsOneWidget);
    },
  );
}
