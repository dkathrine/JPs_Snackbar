import 'package:flutter/material.dart';
import 'package:jps_snackbar/src/common/gradient_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/hintergründe/bg_startscreen.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
