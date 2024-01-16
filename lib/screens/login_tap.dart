import 'package:flutter/material.dart';

import '../config/palette.dart';

class LoginTap extends StatefulWidget {
  final String tapText;

  const LoginTap({
    Key? key,
    required this.tapText,
  }) : super(key: key);

  @override
  State<LoginTap> createState() => _LoginTapState();
}

class _LoginTapState extends State<LoginTap> {
  bool isSignUpState = false;

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
