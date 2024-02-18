import 'package:flutter/material.dart';

void showMessage(context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
