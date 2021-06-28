import 'package:flutter/material.dart';

class DialogMessageWidget extends StatelessWidget {
  const DialogMessageWidget({
    Key? key,
    required String message,
    required IconData icon,
  })  : _icon = icon,
        _message = message,
        super(key: key);

  final String _message;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Icon(_icon),
      content: Text(_message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("OK"),
        ),
      ],
    );
  }
}
