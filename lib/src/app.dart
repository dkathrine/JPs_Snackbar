import 'package:flutter/material.dart';
import 'package:jps_snackbar/src/features/StartScreen/presentation/start_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: StartScreen()));
  }
}
