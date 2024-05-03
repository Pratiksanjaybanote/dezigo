import 'package:dezigo1/Home_page.dart';
import 'package:dezigo1/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP'),
        leading: IconButton(
          icon: Image.asset('assets/back icon.jpg'),
          // Replace 'assets/images/app_icon.png' with your image path
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => (sign_in())),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Verify Your Identity',
              style: TextStyle(
                  color: Color(0xFFC91DA9),
                  fontSize: 44,
                  fontWeight: FontWeight.bold),
            ),
          ),

          PinCodeTextField(
            // controller: pinController,
            defaultBorderColor: Color(0xFFC91DA9),
            keyboardType: TextInputType.number,
            maxLength: 4,
            highlight: true,
            highlightColor: Colors.transparent,
            pinBoxColor: Colors.transparent,
            pinBoxRadius: 0,
            pinBoxBorderWidth: 0,

          ),
          SizedBox(height: 400,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (Home_page())),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFC91DA9),
                  fixedSize: Size(330, 50)),
              child: Text('verify',style: TextStyle(color: Colors.white,fontSize: 19),))
        ],
      ),
    );
  }
}
