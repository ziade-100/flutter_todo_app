import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        //Logo
        Container(
          padding: const EdgeInsets.only(top: 30, bottom: 25),
          alignment: Alignment.center,
          child: const Text("Logo goes here"),
        ),
        //title
        Container(
          padding: const EdgeInsets.only(top: 30, bottom: 20),
          alignment: Alignment.center,
          child: const Text(
            "TooDoo",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 3),
              child: const Text("Forgot password ?", style: TextStyle(fontSize: 20),),
            ),
            Container(
              alignment: Alignment.topLeft,
               padding: const EdgeInsets.fromLTRB(10, 5, 5, 3),
              child: const Text("A Password reset code will sent to your email"),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F2ED),
                  hintText: 'Your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    
                    ) ),
              ),
            ),
            Container(
              height: 70,
              width: 150,
              padding: const EdgeInsets.fromLTRB(5, 15, 5, 10),
              child: ElevatedButton(
                onPressed: (){},
                child: const  Text("Send Code"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))),
                    ),
                ),
                ),
            
          ]
        )
      ]),
    );
  }
}
