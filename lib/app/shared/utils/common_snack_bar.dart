import 'package:flutter/material.dart';

class CommonSnackBar {
  SnackBar _snackBar({
    required String title,
    Color? backgroundColor,
  }) {
    return SnackBar(
      content: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: backgroundColor ?? Colors.red,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    );
  }

  void show({
    required BuildContext context,
    required String title,
    Color? backgroundColor,
  }) async {
    ScaffoldMessenger.of(context).showSnackBar(_snackBar(
      title: title,
      backgroundColor: backgroundColor,
    ));
  }
}
