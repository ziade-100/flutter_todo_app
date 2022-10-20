import 'package:flutter/cupertino.dart';
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
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.only(top: 30,bottom: 0),
                child: Image.asset(
                  "lib/images/logo.png",
                  width: 100,
                  height: 100,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
                child: const Text("TooDoo",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Log in to Continue.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
            SizedBox(height: 10,),
            // password 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFF9F2ED),
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
            SizedBox(height: 10,),
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                         Text("Forget Password ?  "),
                         GestureDetector(
                          onTap: (){
                            Navigator.push(context, 
                            MaterialPageRoute(
                              builder: (context)=> const ForgotPassword()));
                          },
                          child:  Text("Reset", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                         )
                       
                ],)),),
            // button 
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=> const MyMainPage()));
                },
                child: Container(
                 height: 50,
                 width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                    ),
                  padding: const EdgeInsets.all(16),
                  child: Center(
                    child: Text("Sign In", 
                    style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 15 )
                    ),)),
              ),
              ),
              // forget password 
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                         Text("New to TooDoo? ", style: TextStyle(fontWeight: FontWeight.bold),),
                         GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context)=>const SignUp()),
                            );
                          },
                          child: Text("Sing Up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),)
                        
                ],)),)
          ],
        ),
      )),
    );
  }
}
