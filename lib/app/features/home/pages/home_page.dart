import 'package:flutter/material.dart';

import '../widgets/balance_widget.dart';
import '../widgets/offers_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BalanceWidget(
              key: Key("balance"),
            ),
            Text(
              "Marketplace",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: OffersWidget(
                key: Key("offers"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
