import 'package:flutter/material.dart';

import '../routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(createRoute());
          },
          child: Text('Router Test'),
        ),
      ),
    );
  }
}
