import 'package:flutter/material.dart';
import '../../../shared/models/offer_model.dart';

class OfferContentWidget extends StatelessWidget {
  const OfferContentWidget({
    Key? key,
    required OfferModel offer,
  })  : _offer = offer,
        super(key: key);

  final OfferModel _offer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "${_offer.product.image}",
              errorBuilder: (context, error, stackTrace) => Container(),
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
                    "${_offer.product.name}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("${_offer.product.description}"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "\$${_offer.price}",
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
