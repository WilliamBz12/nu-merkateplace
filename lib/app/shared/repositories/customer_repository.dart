import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:numarketplace/app/shared/models/customer_model.dart';

class CustomerRepository {
  CustomerRepository({required GraphQLClient client}) : _client = client;
  final GraphQLClient _client;

  Future<Either<String, CustomerModel>> fetch() async {
    try {
      final query = """
      query{
        viewer{
          balance
          name
        }
      }
      """;
      final result = await _client.query(QueryOptions(document: gql(query)));

      final customer = CustomerModel.fromJson(result.data!["viewer"]);
      return Right(customer);
    } on OperationException catch (e) {
      return Left("Error: ${e.graphqlErrors.first.message}");
    }
  }
}
