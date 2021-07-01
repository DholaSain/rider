import 'package:flutter/material.dart';

class WelcomScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffc16818),
              Color(0xfff59836),
            ],
          ),
        ),
      ),
    );
  }
}
