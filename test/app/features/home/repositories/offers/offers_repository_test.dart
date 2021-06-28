import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:numarketplace/app/features/home/repostories/offers_repository.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';

import 'offers_repository_test.mocks.dart';

@GenerateMocks([GraphQLClient])
void main() {
  final graphqlClient = MockGraphQLClient();
  final offersRepository = OffersRepository(client: graphqlClient);

  final result = <String, dynamic>{
    "viewer": {
      "offers": [
        {
          "price": 5000,
          "id": "offer/portal-gun",
          "product": {
            "name": "Portal Gun",
            "description":
                "The Portal Gun is a gadget that allows the user(s) to travel between different universes/dimensions/realities.",
            "image":
                "https://vignette.wikia.nocookie.net/rickandmorty/images/5/55/Portal_gun.png/revision/latest/scale-to-width-down/310?cb=20140509065310"
          }
        },
      ]
    }
  };

  group('OffersRepository', () {
    test('should return a list of offers when request is correct', () async {
      when(graphqlClient.query(any)).thenAnswer(
        (_) async => QueryResult(
          data: result,
          source: null,
        ),
      );
      final data = await offersRepository.fetchAll();
      final offers = data.getOrElse(() => <OfferModel>[]);
      expect(
        offers.first.price,
        equals(OfferModel.fromJson(result["viewer"]["offers"][0]).price),
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
      final data = await offersRepository.fetchAll();
      final message = (data as Left).value as String;
      expect(
        message,
        equals("Error: arguments invalid"),
      );
    });
  });
}
