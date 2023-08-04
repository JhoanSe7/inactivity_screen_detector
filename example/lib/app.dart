import 'package:flutter/material.dart';
import 'package:inactivity_screen_detector/provider/timer_service.dart';
import 'package:inactivity_screen_detector/provider/timer_service_provider.dart';
import 'package:inactivity_screen_detector_example/presentation/login_page.dart';

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
