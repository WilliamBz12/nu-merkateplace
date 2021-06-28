import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:numarketplace/app/features/offer/state_notifiers/purchase/purchase_state_notifier.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';
import 'package:numarketplace/app/shared/widgets/dialog_message_widget.dart';
import 'package:numarketplace/app/shared/widgets/loading_button_widget.dart';

import '../../../app_provider.dart';
import '../offer_provider.dart';

class OfferPage extends StatefulWidget {
  final OfferModel offer;
  const OfferPage({
    Key? key,
    required this.offer,
  }) : super(key: key);

  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  void _handlePurchase(_, PurchaseState state) {
    state.maybeWhen(
      failure: (message) {
        showDialog(
          context: context,
          builder: (_) => DialogMessageWidget(
            message: message,
            icon: Icons.error,
          ),
        );
      },
      success: (offer) {
        context
            .read(customerStateNotifierProvider.notifier)
            .addNewPurchase(offer);
        showDialog(
          context: context,
          builder: (_) => DialogMessageWidget(
            message: "You bought a ${offer.product.name}",
            icon: Icons.check,
          ),
        );
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
                _buildContent(),
                LoadingButtonWidget(
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

  Widget _buildContent() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "${widget.offer.product.image}",
              height: 300,
              width: double.maxFinite,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.offer.product.name}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("${widget.offer.product.description}"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "\$${widget.offer.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
