# Inactivity screen detector

Inactivity screen detector reacts to inactivity on the screen

*For example you have a banking application and you need to lock the device after the expiration date for example 30 seconds this plugin solves your problem*

# Overview of parameters

Duration `duration` the delay after which the `onStopped` function will be executed.

Function `onStopped` will be executed when the screen is inactive.

## Usage

**initialize**

You need to provide it to the root widget

like bellow

```dart
import 'package:flutter/material.dart';
import 'package:inactivity_screen_detector/provider/timer_service.dart';
import 'package:inactivity_screen_detector/provider/timer_service_provider.dart';
import 'package:inactivity_screen_detector_example/presentation/login_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimerServiceProvider(
      service: TimerService(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginPage(),
      ),
    );
  }
}

```

**Example Usage**

The **onStopped** function will trigger when the screen is idle with a delay of 5 seconds

````dart
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
```` 

©Copyright 2023