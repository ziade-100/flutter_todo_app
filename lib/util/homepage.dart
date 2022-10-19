import 'package:flutter/material.dart';
import 'package:todo/util/accept_code.dart';
import 'package:todo/util/password_forgot.dart';
import 'package:todo/util/save_pasword.dart';
import 'package:todo/util/signin.dart';
import 'package:todo/util/signup.dart';
import 'package:todo/util/todo_home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Too doo",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SignUp(),
          ),
    );
    
  }
}