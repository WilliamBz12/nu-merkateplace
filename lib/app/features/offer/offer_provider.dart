import 'package:numarketplace/app/features/offer/repository/purchase_repository.dart';
import 'package:numarketplace/app/features/offer/state_notifiers/purchase/purchase_state_notifier.dart';
import 'package:numarketplace/app/shared/state_notifiers/customer/customer_state_notifier.dart';
import 'package:riverpod/riverpod.dart';

import '../../app_provider.dart';

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
  ),
);
