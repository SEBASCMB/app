import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration inputDecoration(
      {required String hintext}) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
        color: Color.fromRGBO(252, 212, 220, 1.0),
      )),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(204, 204, 204, 0.8))),
      hintText: hintext,
    );
  }
}

class InputRegisterDecorations {
  static InputDecoration inputDecoration(
      {required String hintext}) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
        color: Color.fromRGBO(252, 212, 220, 1.0),
      )),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(204, 204, 204, 0.8))),
      hintText: hintext,
    );
  }
}


