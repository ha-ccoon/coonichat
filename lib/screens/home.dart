import 'package:coonichat/components/image_tile.dart';
import 'package:flutter/material.dart';

import '../routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Party Guam'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              color: Colors.lightBlue,
            ),
          ),
          Positioned(
            top: 50,
            child: Container(
              margin: EdgeInsets.all(16.0),
              child: const Column(
                children: [
                  Row(
                    children: [
                      const ImageTile(imagePath: 'images/web-design.png'),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: 0,
            right: 0,
            // left: MediaQuery.of(context).size.width * 0.5,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(createRoute());
                },
                child: Text('Router Test'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
