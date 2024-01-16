import 'package:coonichat/config/palette.dart';
import 'package:flutter/material.dart';

class RoundedTextForm extends StatelessWidget {
  final String inputValue;
  final IconData icon;

  const RoundedTextForm(
      {Key? key, required this.inputValue, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Palette.iconColor,
        ),

        /// Draws a rounded rectangle around an InputDecorator's container
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.textColor1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(35.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Palette.textColor1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(35.0),
          ),
        ),
        hintText: inputValue,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Palette.textColor1,
        ),
        contentPadding: const EdgeInsets.all(10),
      ),
    );
  }
}
