import 'package:flutter/material.dart';
import 'package:todo/util/signin.dart';
import 'package:todo/util/signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Too doo",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SignIn(), ),
    );
    
  }
}