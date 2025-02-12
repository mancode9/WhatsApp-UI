import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/log_in/login_screen.dart';
import 'package:whatsapp_ui/screens/widgets/ui_helper.dart';

class onboarding_screen extends StatelessWidget {
  const onboarding_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/boarding.png'),
            SizedBox(
              height: 20,
            ),
            ui_Helper.CoustomText(
                text: 'Welcome to WhatsApp',
                height: 20,
                color: Color(0xff000000)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ui_Helper.CoustomText(text: 'Read out ', height: 14),
                ui_Helper.CoustomText(
                    text: 'Privacy Policy', height: 14, color: Colors.blue),
                ui_Helper.CoustomText(
                    text: ' Tap "Agree and continue"', height: 14),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ui_Helper.CoustomText(text: 'to accept the ', height: 14),
                ui_Helper.CoustomText(
                    text: 'Teams and Services', height: 14, color: Colors.blue),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: ui_Helper.CustomButton(
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => login_screen()));
          },
          buttonname: "Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
