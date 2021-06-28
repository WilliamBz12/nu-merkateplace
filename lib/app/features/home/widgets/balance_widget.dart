import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app_provider.dart';
import 'customer_widget.dart';

class BalanceWidget extends StatefulWidget {
  const BalanceWidget({Key? key}) : super(key: key);

  @override
  _BalanceWidgetState createState() => _BalanceWidgetState();
}

class _BalanceWidgetState extends State<BalanceWidget> {
  @override
  void initState() {
    super.initState();
    context.read(customerStateNotifierProvider.notifier).load();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: SafeArea(
        child: Consumer(
          builder: (context, watch, child) {
            final customerState = watch(customerStateNotifierProvider);
            return customerState.maybeWhen(
              failure: (error) => Text(error),
              loading: () => CircularProgressIndicator(color: Colors.white),
              success: (customer) => CustomerWidget(customer: customer),
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
