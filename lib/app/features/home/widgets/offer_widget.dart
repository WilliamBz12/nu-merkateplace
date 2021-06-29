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
        PurchaseRoute(offer: _offer),
      ),
      child: Card(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Colors.green,
              width: double.maxFinite,
              height: 70,
              child: Image.network(
                "${_offer.product.image}",
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${_offer.product.name}",
                      overflow: TextOverflow.ellipsis,
                    ),
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
          ],
        ),
      ),
    );
  }
}
