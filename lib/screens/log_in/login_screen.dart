import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/otp/otp_screen.dart';
import '../widgets/ui_helper.dart';

class login_screen extends StatefulWidget {
  login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  TextEditingController phoneController = TextEditingController();

  String selectedcountry = "Pakistan";

  List<String> countries = [
    "Pakistan",
    "India",
    "Italy",
    "Germany",
    "America",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: ui_Helper.CoustomText(
                text: 'Enter your Phone Number',
                height: 20,
                color: Colors.green,
                fontweight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          ui_Helper.CoustomText(
              text: 'WhatsApp will need to verify your phone',
              height: 14,
              color: Colors.grey.shade600),
          ui_Helper.CoustomText(
              text: 'number.Carrier charges may apply.',
              height: 14,
              color: Colors.grey.shade600),
          ui_Helper.CoustomText(
              text: "what's my number?", height: 16, color: Colors.green),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField<String>(
              items: countries.map((String country) {
                return DropdownMenuItem(
                  child: Text(country.toString()),
                  value: country,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedcountry = value!;
                });
              },
              value: selectedcountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+92",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: ui_Helper.CustomButton(
          callback: () {
            login(phoneController.text.toString());
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          'Enter Phone Number',
        ),
        backgroundColor: Colors.green,
      ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => otp_screen(
                    phonenumber: phonenumber,
                  )));
    }
  }
}
