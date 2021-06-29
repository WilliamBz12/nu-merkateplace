import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';

import '../home_provider.dart';
import 'offer_widget.dart';

class OffersWidget extends StatefulWidget {
  const OffersWidget({Key? key}) : super(key: key);

  @override
  _OffersWidgetState createState() => _OffersWidgetState();
}

class _OffersWidgetState extends State<OffersWidget> {
  @override
  void initState() {
    super.initState();
    context.read(offersStateNotifierProvider.notifier).load();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer(
        builder: (context, watch, child) {
          final offersState = watch(offersStateNotifierProvider);
          return offersState.maybeWhen(
            failure: (error) => Text(error),
            loading: () => CircularProgressIndicator(),
            success: _buildGrid,
            orElse: () => Container(),
          );
        },
      ),
    );
  }

  Widget _buildGrid(List<OfferModel> offers) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      key: Key("gridOffers"),
      itemCount: offers.length,
      itemBuilder: (_, i) => OfferWidget(
        offer: offers[i],
        key: Key("offer$i"),
      ),
    );
  }
}
