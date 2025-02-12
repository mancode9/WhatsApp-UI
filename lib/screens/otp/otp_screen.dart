import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/profile/profile_screen.dart';
import 'package:whatsapp_ui/screens/widgets/ui_helper.dart';

class otp_screen extends StatelessWidget {
  String phonenumber;

  otp_screen({required this.phonenumber});

  //const otp_screen({super.key});

  TextEditingController otp1controller = TextEditingController();
  TextEditingController otp2controller = TextEditingController();
  TextEditingController otp3controller = TextEditingController();
  TextEditingController otp4controller = TextEditingController();
  TextEditingController otp5controller = TextEditingController();
  TextEditingController otp6controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            ui_Helper.CoustomText(
                text: 'Verifying your number',
                height: 20,
                color: Colors.green,
                fontweight: FontWeight.bold),
            SizedBox(
              height: 30,
            ),
            ui_Helper.CoustomText(
                text: 'you\'ve tried to register +92 ${phonenumber}',
                height: 15),
            ui_Helper.CoustomText(
                text: 'recently Wait before requesting an sms or a call',
                height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ui_Helper.CoustomText(text: 'with your Code.', height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: ui_Helper.CoustomText(
                      text: 'Wrong number?', height: 15, color: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ui_Helper.CustomContainer(otp1controller),
                SizedBox(
                  width: 10,
                ),
                ui_Helper.CustomContainer(otp2controller),
                SizedBox(
                  width: 10,
                ),
                ui_Helper.CustomContainer(otp3controller),
                SizedBox(
                  width: 10,
                ),
                ui_Helper.CustomContainer(otp4controller),
                SizedBox(
                  width: 10,
                ),
                ui_Helper.CustomContainer(otp5controller),
                SizedBox(
                  width: 10,
                ),
                ui_Helper.CustomContainer(otp6controller),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ui_Helper.CoustomText(
                text: 'Did\'t receive code?',
                height: 14,
                color: Colors.green.shade800),
          ],
        ),
      ),
      floatingActionButton: ui_Helper.CustomButton(
          callback: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
