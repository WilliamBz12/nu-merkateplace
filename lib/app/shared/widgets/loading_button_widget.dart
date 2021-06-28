import 'package:flutter/material.dart';

class LoadingButtonWidget extends StatelessWidget {
  const LoadingButtonWidget({
    Key? key,
    required this.onPressed,
    required this.title,
    this.isLoading = false,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 90,
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
        ),
        child: isLoading ? CircularProgressIndicator() : Text("$title"),
      ),
    );
  }
}
