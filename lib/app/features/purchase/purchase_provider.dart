import 'package:riverpod/riverpod.dart';

import '../../app_provider.dart';
import '../../shared/state_notifiers/customer/customer_state_notifier.dart';
import 'repositories/purchase_repository.dart';
import 'state_notifiers/purchase/purchase_state_notifier.dart';

final purchaseRepoProvider = Provider.autoDispose<PurchaseRepository>(
  (ref) => PurchaseRepository(
    client: ref.read(clientProvider),
    currentCustomer:
        (ref.watch(customerStateNotifierProvider) as CustomerSuccess).customer,
  ),
);

final purchaseStateNotifierProvider =
    StateNotifierProvider.autoDispose<PurchaseStateNotifier, PurchaseState>(
  (ref) => PurchaseStateNotifier(
    ref.read(purchaseRepoProvider),
    ref.watch(customerStateNotifierProvider.notifier),
  ),
);
