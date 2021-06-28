import 'package:flutter/material.dart';
import 'package:numarketplace/app/features/home/widgets/offers_widget.dart';

import 'widgets/balance_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BalanceWidget(),
          Expanded(
            child: OffersWidget(),
          ),
        ],
      ),
    );
  }
}
