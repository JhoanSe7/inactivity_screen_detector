import 'package:flutter/material.dart';
import 'package:inactivity_screen_detector_example/presentation/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            child: Column(
              children: [
                const Text("Login"),
                TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
                    onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        ),
                    child: const Text(
                      "Enter",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
