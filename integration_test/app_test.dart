import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:numarketplace/app/app_widget.dart';
import 'package:numarketplace/app/features/home/pages/home_page.dart';
import 'package:numarketplace/app/features/purchase/pages/purchase_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "should buy a product without problems",
    (tester) async {
      await tester.pumpWidget(AppWidget());

      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      await tester.pumpAndSettle();

      expect(find.byKey(Key("offers")), findsOneWidget);

      await tester.tap(find.byKey(Key("offer3")));

      await tester.pumpAndSettle();

      await tester.tap(find.byType(PurchasePage));

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key("purchase")));

      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);

      await tester.pumpAndSettle();

      expect(find.byType(HomePage), findsOneWidget);

      expect(find.text("\$0"), findsOneWidget);

      await tester.tap(find.byKey(Key("offer2")));

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key("purchase")));

      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);

      await tester.pumpAndSettle();

      expect(find.byType(PurchasePage), findsOneWidget);
    },
  );
}
