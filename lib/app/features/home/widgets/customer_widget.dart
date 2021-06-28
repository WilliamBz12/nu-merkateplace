import 'package:flutter/material.dart';
import '../../../shared/models/customer_model.dart';

class CustomerWidget extends StatelessWidget {
  const CustomerWidget({
    Key? key,
    required CustomerModel customer,
  })  : _customer = customer,
        super(key: key);
  final CustomerModel _customer;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hi ${_customer.name}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "\$${_customer.balance}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Your balance",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
