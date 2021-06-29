import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ApiClientFactory {
  static GraphQLClient create() {
    final httpLink = HttpLink(
      "https://staging-nu-needful-things.nubank.com.br/query",
      defaultHeaders: <String, String>{
        'Authorization': 'Bearer ${dotenv.env["BASE_TOKEN"]}',
      },
    );
    return GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    );
  }
}
