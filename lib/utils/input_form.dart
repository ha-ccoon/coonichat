import 'package:coonichat/config/palette.dart';
import 'package:flutter/material.dart';

class LoginSignUpTextFormField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final Color hintColor = Palette.textColor1;

  const LoginSignUpTextFormField({
    Key? key,
    required this.prefixIcon,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
          color: Palette.iconColor,
        ),

        /// Draws a rounded rectangle around an InputDecorator's container
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: hintColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(35.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: hintColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(35.0),
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          color: hintColor,
        ),
        contentPadding: const EdgeInsets.all(10),
      ),
    );
  }
}
