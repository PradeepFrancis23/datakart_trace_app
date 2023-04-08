import 'dart:async';

import 'package:datakart/view/loginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Row(
            children: [
              Image.asset(
                "asset/images/appicon.png",
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "DataKart Trace",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(246, 2, 11, 80)),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const Padding(
        padding: EdgeInsets.fromLTRB(160, 10, 10, 25),
        child: Text(
          "Version 3.0.1",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
