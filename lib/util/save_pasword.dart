import 'package:flutter/material.dart';

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
              "Create New Password",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: Form(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Container(
                  padding: const EdgeInsets.only(top: 3,bottom: 5,right: 15,left: 10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F2ED),
                        hintText: 'New Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                        ),
                  ),
                ),
                
                Container(
                  padding: const EdgeInsets.only(top: 3,bottom: 15,right: 15,left: 10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F2ED),
                        hintText: 'Confirm Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                        ),
                  ),
                ),
               
                Container(
                  height: 70,
                  width: 160,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Save",
                        style: TextStyle(fontSize: 15),
                      ),
                     ),
                ),
               
              ],
            )),
          )
        ]),
      ),
    );
  }
}