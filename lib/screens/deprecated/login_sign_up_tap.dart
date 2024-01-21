import 'package:flutter/material.dart';

import '../../config/palette.dart';

class SignUpTap extends StatefulWidget {
  final String tapText;

  const SignUpTap({
    Key? key,
    required this.tapText,
  }) : super(key: key);

  @override
  State<SignUpTap> createState() => _SignUpTapState();
}

class _SignUpTapState extends State<SignUpTap> {
  bool isSignUpState = true;

  void toggleState() {
    setState(() {
      isSignUpState = !isSignUpState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          toggleState();
        });
      },
      child: Column(
        children: [
          Text(
            widget.tapText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSignUpState ? Palette.activeColor : Palette.textColor1,
            ),
          ),
          if (isSignUpState)
            Container(
              margin: const EdgeInsets.only(top: 3),
              height: 2,
              width: 55,
              color: Colors.orange,
            ),
        ],
      ),
    );
  }
}
