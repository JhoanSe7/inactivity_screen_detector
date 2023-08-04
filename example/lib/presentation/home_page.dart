import 'package:flutter/material.dart';
import 'package:inactivity_screen_detector/inactivity_screen_detector.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InactivityScreenDetector(
      duration: const Duration(seconds: 5),
      onStopped: _onStopped,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Align(
            child: Column(
              children: const [
                Text("Welcome to my Home Screen"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onStopped() => debugPrint("Stop");
}
