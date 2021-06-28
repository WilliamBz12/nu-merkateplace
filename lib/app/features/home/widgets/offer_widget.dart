import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/routes/auto_route_config.gr.dart';
import '../../../shared/models/offer_model.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key? key,
    required OfferModel offer,
  })  : _offer = offer,
        super(key: key);

  final OfferModel _offer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(
        OfferRoute(offer: _offer),
      ),
      child: Card(
        margin: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("${_offer.product.name}"),
              SizedBox(height: 5),
              Text(
                "\$${_offer.price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
