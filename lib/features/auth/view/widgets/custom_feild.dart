import 'package:flutter/material.dart';

class CustomFeild extends StatelessWidget {
  final String hintText;
  final bool isObsecureText;
  final TextEditingController controller;
  const CustomFeild(
      {super.key,
      required this.hintText,
      required this.controller,
      this.isObsecureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      obscureText: isObsecureText,
      obscuringCharacter: "*",
      validator: (val) {
        if (val!.trim().isEmpty) {
          return "$hintText is missing!";
        }
        return null;
      },
    );
  }
}
