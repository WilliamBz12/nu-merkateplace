import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:numarketplace/app/features/purchase/repositories/purchase_repository.dart';
import 'package:numarketplace/app/shared/models/customer_model.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';
import 'package:numarketplace/app/shared/models/product_model.dart';

import 'purchase_repository_test.mocks.dart';

@GenerateMocks([GraphQLClient])
void main() {
  final customer = CustomerModel(name: "Jerry Smith", balance: 100);
  final offer = OfferModel(
    price: 100,
    product: ProductModel(
        name: "product", description: "description", image: "image"),
    id: "offer",
  );

  final resultData = <String, dynamic>{
    "purchase": {
      "success": true,
      "errorMessage": null,
      "customer": {
        "id": "cccc3f48-dd2c-43ba-b8de-8945e7ababab",
        "name": "Jerry Smith",
        "balance": 0,
      }
    }
  };

  final failedData = <String, dynamic>{
    "purchase": {
      "success": false,
      "errorMessage": "Offer Expired",
      "customer": null
    }
  };

  final graphqlClient = MockGraphQLClient();
  final purchaseRepository = PurchaseRepository(
    client: graphqlClient,
    currentCustomer: customer,
  );

  group('purchaseRepository', () {
    test('should return a customer purchase when request is correct', () async {
      when(graphqlClient.query(any)).thenAnswer(
        (_) async => QueryResult(
          data: resultData,
          source: null,
        ),
      );
      final data = await purchaseRepository.purchase(offer);
      final result = data.getOrElse(() => customer);
      expect(
        result.balance,
        equals(
            CustomerModel.fromJson(resultData["purchase"]["customer"]).balance),
      );
    });

    test('should return an error message when request is incorrect', () async {
      when(graphqlClient.query(any)).thenThrow(
        OperationException(
          graphqlErrors: [
            GraphQLError(message: "Throw an error"),
          ],
        ),
      );
      final data = await purchaseRepository.purchase(offer);
      final message = (data as Left).value as String;
      expect(
        message,
        equals("Error: Throw an error"),
      );
    });

    test('should return an error message when offer was expired', () async {
      when(graphqlClient.query(any)).thenAnswer(
        (_) async => QueryResult(
          data: failedData,
          source: null,
        ),
      );
      final data = await purchaseRepository.purchase(offer);
      final message = (data as Left).value as String;
      expect(
        message,
        equals("Offer Expired"),
      );
    });

    test(
      'should return an error message when customer dont have enoght money',
      () async {
        var _purchaseRepository = PurchaseRepository(
          client: graphqlClient,
          currentCustomer: customer.copyWith(balance: 0),
        );

        final data = await _purchaseRepository.purchase(offer);
        final message = (data as Left).value as String;
        expect(
          message,
          equals("you do not have enough money"),
        );
      },
    );
  });
}
