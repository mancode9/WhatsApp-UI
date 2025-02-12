import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/on_boarding/onboarding_screen.dart';
import 'package:whatsapp_ui/screens/widgets/ui_helper.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => onboarding_screen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp 1.png'),
            SizedBox(
              height: 20,
            ),
            ui_Helper.CoustomText(
                text: "WhatsApp", height: 18, fontweight: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
