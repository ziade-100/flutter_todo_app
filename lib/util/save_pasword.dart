import 'package:flutter/material.dart';
import 'package:todo/util/signin.dart';

class SaveNewPassword extends StatefulWidget {
  const SaveNewPassword({Key? key}) : super(key: key);

  @override
  State<SaveNewPassword> createState() => _SaveNewPasswordState();
}

class _SaveNewPasswordState extends State<SaveNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Image.asset("lib/images/logo.png", width: 100, height: 100,),
            ),
          ),
          //title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              alignment: Alignment.center,
              child: const Text(
                "Too Doo",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Create New Password",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                       padding: const EdgeInsets.all(5),
                       // ignore: prefer_const_constructors
                       decoration: BoxDecoration(
                        color: const Color(0xFFF9F2ED),
                        borderRadius: BorderRadius.circular(15)),
                       child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'New Password',
                            border: InputBorder.none,
                            ),
                      ),
                    ),
                  ),
                  
                   Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                       padding: const EdgeInsets.all(5),
                       // ignore: prefer_const_constructors
                       decoration: BoxDecoration(
                        color: const Color(0xFFF9F2ED),
                        borderRadius: BorderRadius.circular(15)),
                       child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Confirm Password',
                            border: InputBorder.none,
                            ),
                      ),
                    ),
                  ),
                 SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context)=> const SignIn()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                        child: const Text("Save", 
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                 
                ],
              )),
            ),
          )
        ]),
      ),
    );
  }
}