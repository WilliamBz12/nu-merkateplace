import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';

class OffersRepository {
  OffersRepository({required GraphQLClient client}) : _client = client;
  final GraphQLClient _client;

  Future<Either<String, List<OfferModel>>> fetchAll() async {
    try {
      final query = """
     query{
        viewer{
          offers{
            price
            id
            product {
              name
              description
              image
            }
          }
        }
      }
      """;
      final result = await _client.query(QueryOptions(document: gql(query)));

      var offers = <OfferModel>[];

      for (var item in result.data!["viewer"]["offers"]) {
        final offer = OfferModel.fromJson(item);
        offers.add(offer);
      }
      return Right(offers);
    } on OperationException catch (e) {
      return Left("Error: ${e.graphqlErrors.first.message}");
    }
  }
}
