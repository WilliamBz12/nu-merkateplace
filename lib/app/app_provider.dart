import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod/riverpod.dart';

import 'core/api/graphql_client_factory.dart';
import 'shared/repositories/customer_repository.dart';
import 'shared/state_notifiers/customer/customer_state_notifier.dart';

final clientProvider = Provider<GraphQLClient>(
  (_) => ApiClientFactory.create(),
);

final customerRepoProvider = Provider<CustomerRepository>(
  (ref) => CustomerRepository(client: ref.read(clientProvider)),
);

final customerStateNotifierProvider =
    StateNotifierProvider<CustomerStateNotifier, CustomerState>(
  (ref) => CustomerStateNotifier(
    ref.read(customerRepoProvider),
  ),
);
