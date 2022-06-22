import 'package:flutter/material.dart';

class AppStyle {
  static InputDecoration textFieldDecoration(
      {required String labelText, required String hintText}) {
    return InputDecoration(
      labelText: labelText,
      filled: true,
      fillColor: Colors.pinkAccent[150],
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.redAccent[500], fontSize: 16),
      border: const OutlineInputBorder(),
      focusedBorder: const OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.pinkAccent,
        ),
      ),
    );
  }
}
