import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:numarketplace/app/shared/models/offer_model.dart';

import '../../../auto_route_config.gr.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key? key,
    required this.offer,
  }) : super(key: key);

  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(OfferRoute(offer: offer)),
      child: Card(
        margin: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("${offer.product.name}"),
              SizedBox(height: 5),
              Text(
                "\$${offer.price}",
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
