import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/models/offer_model.dart';
import '../../../shared/utils/common_snack_bar.dart';
import '../../../shared/widgets/loading_button_widget.dart';
import '../purchase_provider.dart';
import '../state_notifiers/purchase/purchase_state_notifier.dart';
import '../widgets/offer_content_widget.dart';

class PurchasePage extends StatefulWidget {
  final OfferModel offer;
  const PurchasePage({
    Key? key,
    required this.offer,
  }) : super(key: key);

  @override
  _PurchasePageState createState() => _PurchasePageState();
}

class _PurchasePageState extends State<PurchasePage> {
  void _handlePurchase(_, PurchaseState state) {
    state.maybeWhen(
      failure: (message) {
        CommonSnackBar().show(context: context, title: message);
      },
      success: (offer) {
        CommonSnackBar().show(
          context: context,
          title: "You bought a ${offer.product.name}",
          backgroundColor: Colors.green,
        );
        Navigator.pop(context);
      },
      orElse: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.offer.product.name}"),
      ),
      body: ProviderListener<PurchaseState>(
        provider: purchaseStateNotifierProvider,
        onChange: _handlePurchase,
        child: Consumer(
          builder: (context, watch, child) {
            final state = watch(purchaseStateNotifierProvider);

            return Column(
              children: [
                OfferContentWidget(
                  offer: widget.offer,
                ),
                LoadingButtonWidget(
                  key: Key("purchase"),
                  onPressed: () {
                    context
                        .read(purchaseStateNotifierProvider.notifier)
                        .load(widget.offer);
                  },
                  title: "Buy",
                  isLoading: state is PurchaseLoading,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
