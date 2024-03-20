import 'package:flutter/material.dart';
import 'package:skillharvest/Theme/pallete.dart';

class SignUpCheckBox extends StatefulWidget {
  const SignUpCheckBox({
    super.key,
  });

  @override
  State<SignUpCheckBox> createState() => _SignUpCheckBoxState();
}

class _SignUpCheckBoxState extends State<SignUpCheckBox> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: (value) {
        setState(() {
          toggle = !toggle;
        });
      },
      value: toggle,
      checkColor: Pallete.whiteColor,
      activeColor: Pallete.blueColor,
    );
  }
}