import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/widgets/ui_helper.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            ui_Helper.CoustomText(
                text: 'Profile Info',
                height: 20,
                color: Colors.green,
                fontweight: FontWeight.bold),
            SizedBox(
              height: 30,
            ),
            ui_Helper.CoustomText(
                text: 'Please provide your name and an optional ', height: 15),
            ui_Helper.CoustomText(text: 'Profile photo', height: 15),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                _openBottom(context);
              },
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey.shade300,
                child: Image.asset(
                  'assets/images/photo-camera 1.png',
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Type your name here',
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Image.asset('assets/images/happy-face 1.png'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: ui_Helper.CustomButton(callback: (){}, buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  _openBottom(BuildContext context){
    return showBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 200,
        width: 200,

      );
    });
  }
}
