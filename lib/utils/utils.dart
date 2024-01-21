import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void showSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(text)));
}
