import 'package:flutter/material.dart';
import 'package:todo/util/password_forgot.dart';
import 'package:todo/util/signup.dart';
import 'package:todo/util/todo_home.dart';

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
                  padding: const EdgeInsets.all(15),
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
                  padding: const EdgeInsets.only(top: 3,bottom: 15,right: 15,left: 15),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F2ED),
                        hintText: 'Your Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                        ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 10, right: 8, left: 8),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    const Text("Forgot Password? "),
                     GestureDetector(
                      onTap: (){
                        Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context)=> const ForgotPassword())
                        );
                      },
                      child: const Text("Rest", style: TextStyle(color: Colors.blue),),
                     ),
                  ]),
                ),
                Container(
                  height: 70,
                  width: 160,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: ((context) => const MyMainPage())
                        ));
                      },
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
                            onPressed: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context)=> SignUp())
                              );
                            }, child: const Text("Sign Up"))
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
