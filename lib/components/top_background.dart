import 'package:flutter/material.dart';

class TopBackground extends StatelessWidget {
  final String welcome = 'Welcome ';
  final String titleText;
  final String continueText;

  const TopBackground({
    Key? key,
    required this.titleText,
    required this.continueText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/red.jpg'), fit: BoxFit.fill),
      ),
      child: Container(
        /// offsets in each of the four directions (간격이나 여백을 지정하는데 사용)
        padding: const EdgeInsets.only(top: 90, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// multiple different styles of text
            RichText(
              /// style texts
              text: TextSpan(
                text: welcome,
                style: const TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 25,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: titleText,
                    style: const TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            /// A box with a specified size
            const SizedBox(
              height: 5.0,
            ),
            Text(
              continueText,
              style: const TextStyle(
                letterSpacing: 1.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
