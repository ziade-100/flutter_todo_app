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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(children: <Widget>[
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
              "Too Doo",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Sign in to continue",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    //controller: ,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F2ED),
                        hintText: 'Your email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F2ED),
                        hintText: 'Your Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 10, right: 8, left: 8),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    const Text("Forgot Password? "),
                    TextButton(onPressed: () {}, child: const Text(" Reset"))
                  ]),
                ),
                Container(
                  height: 70,
                  width: 160,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign In",
                        style: TextStyle(fontSize: 15),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("New to Too Doo ?"),
                        TextButton(
                            onPressed: () {}, child: const Text("Sign Up"))
                      ]),
                )
              ],
            )),
          )
        ]),
      ),
    );
  }
}