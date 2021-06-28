import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numarketplace/app/features/home/repostories/offers_repository.dart';
import 'package:numarketplace/app/features/home/state_notifiers/offers/offers_state_notifier.dart';
import '../../app_provider.dart';

final offersRepoProvider = Provider<OffersRepository>(
  (ref) => OffersRepository(client: ref.read(clientProvider)),
);

final offersStateNotifierProvider =
    StateNotifierProvider<OffersStateNotifier, OffersState>(
  (ref) => OffersStateNotifier(
    ref.read(offersRepoProvider),
  ),
);
