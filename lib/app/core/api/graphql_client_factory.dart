import 'package:graphql_flutter/graphql_flutter.dart';

class ApiClientFactory {
  static GraphQLClient create() {
    final httpLink = HttpLink(
      "https://staging-nu-needful-things.nubank.com.br/query",
      defaultHeaders: <String, String>{
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJhd2Vzb21lY3VzdG9tZXJAZ21haWwuY29tIn0.cGT2KqtmT8KNIJhyww3T8fAzUsCD5_vxuHl5WbXtp8c',
      },
    );
    return GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    );
  }
}
