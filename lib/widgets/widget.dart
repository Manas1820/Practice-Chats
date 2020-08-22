import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Image.asset(
      "assets/Images/logo.png",
      height: 50,
    ),
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.white54),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.yellow)),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.lightGreenAccent)),
  );
}

TextStyle textFieldStyle() {
  return TextStyle(color: Colors.white, fontSize: 16);
}

TextStyle textFieldStyle1() {
  return TextStyle(color: Colors.white, fontSize: 17);
}

TextStyle textFieldStyle2() {
  return TextStyle(color: Colors.black, fontSize: 17);
}
