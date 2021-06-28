import 'package:flutter/material.dart';

import '../widgets/balance_widget.dart';
import '../widgets/offers_widget.dart';

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
