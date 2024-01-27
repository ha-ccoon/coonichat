import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String imagePath;

  const ImageTile({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 100,
      height: 100,
      child: Container(
        child: Image.asset(
          imagePath,
          width: 80,
          height: 80,
        ),
      ),
    );
  }
}
