import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_provider.dart';
import 'repostories/offers_repository.dart';
import 'state_notifiers/offers/offers_state_notifier.dart';

final offersRepoProvider = Provider<OffersRepository>(
  (ref) => OffersRepository(client: ref.read(clientProvider)),
);

final offersStateNotifierProvider =
    StateNotifierProvider<OffersStateNotifier, OffersState>(
  (ref) => OffersStateNotifier(
    ref.read(offersRepoProvider),
  ),
);
