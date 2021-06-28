import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:numarketplace/app/shared/models/customer_model.dart';
import 'package:numarketplace/app/shared/repositories/customer_repository.dart';

import 'customer_repository_test.mocks.dart';

@GenerateMocks([GraphQLClient])
void main() {
  final graphqlClient = MockGraphQLClient();
  final customerRepository = CustomerRepository(client: graphqlClient);

  final result = <String, dynamic>{
    "viewer": {
      "balance": 1000000,
      "name": "Jerry Smith",
    }
  };

  group('CustomerRepository', () {
    test('should return a customer when request is correct', () async {
      when(graphqlClient.query(any)).thenAnswer(
        (_) async => QueryResult(
          data: result,
          source: null,
        ),
      );
      final data = await customerRepository.fetch();
      final customer = (data as Right).value as CustomerModel;
      expect(
        customer.name,
        equals(CustomerModel.fromJson(result["viewer"]).name),
      );
    });

    test('should return an error message when request is incorrect', () async {
      when(graphqlClient.query(any)).thenThrow(
        OperationException(
          graphqlErrors: [
            GraphQLError(message: "arguments invalid"),
          ],
        ),
      );
      final data = await customerRepository.fetch();
      final message = (data as Left).value as String;
      expect(
        message,
        equals("Error: arguments invalid"),
      );
    });
  });
}
