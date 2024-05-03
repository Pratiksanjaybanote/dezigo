import 'package:dezigo1/OTP_page.dart';
import 'package:flutter/material.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Continue Your Journey',
                style: TextStyle(
                    color: Color(0xFFC91DA9),
                    fontSize: 44,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                   labelText: '   Registered Mobile Number',
                //  hintText: " Registered Mobile Number",
                    contentPadding: EdgeInsets.all(16),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => (OTP())),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFC91DA9),
                      fixedSize: Size(330, 50)),
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.only(left: 30),
            //       child: Text("Don't have an account yet?"),
            //     ),
            //   TextButton(onPressed: (){}, child: Text(' Sign up now!',style: TextStyle(color: Colors.blue),))
            //   ],
            // ),
            SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(text: "Don't have an account yet?"),
                  TextSpan(
                    text: 'Sign up now!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
