import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../shared/models/customer_model.dart';
import '../../../shared/models/offer_model.dart';

class PurchaseRepository {
  PurchaseRepository({
    required GraphQLClient client,
    required CustomerModel currentCustomer,
  })  : _client = client,
        _currentCustomer = currentCustomer;
  final GraphQLClient _client;
  final CustomerModel _currentCustomer;

  Future<Either<String, CustomerModel>> purchase(OfferModel offer) async {
    try {
      final query = r"""
      mutation ($offerId: ID!){
        purchase (offerId: $offerId) {
          success
          customer {
            name
            balance
          }
          errorMessage
        }
      }
      """;

      if (offer.price > _currentCustomer.balance) {
        return Left("you do not have enough money");
      }

      final result = await _client.query(QueryOptions(
        document: gql(query),
        variables: {"offerId": offer.id},
      ));

      if (!result.data!["purchase"]["success"]) {
        return Left(result.data!["purchase"]["errorMessage"]);
      }

      final data = CustomerModel.fromJson(
        result.data!["purchase"]["customer"],
      );

      return Right(data);
    } on OperationException catch (e) {
      return Left("Error: ${e.graphqlErrors.first.message}");
    }
  }
}
