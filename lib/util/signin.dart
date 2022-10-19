import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "lib/images/logo.png",
                width: 100,
                height: 100,
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
              child: const Text("TooDoo",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ),
            //
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: const Text(
                "Log in to Continue.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              // ignore: avoid_unnecessary_containers
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF9F2ED),
                    borderRadius: BorderRadius.circular(15)),
                child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Your email'),
                    )),
              ),
              //
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              // ignore: avoid_unnecessary_containers
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFF9F2ED),
                    borderRadius: BorderRadius.circular(15)),
                child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Password'),
                    )),
              ),
              //
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                color: Colors.blueAccent,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  ),
                padding: const EdgeInsets.all(16),
                child: Center(child: Text("Sign In"),)),
              )
          ],
        ),
      )),
    );
  }
}
