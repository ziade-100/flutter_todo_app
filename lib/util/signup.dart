import 'package:flutter/material.dart';
import 'package:todo/util/signin.dart';
import 'package:todo/util/todo_home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // accept data from input
  final bool? agreed = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Padding(
      padding: const EdgeInsets.all(12),
      child: ListView(
        children: <Widget>[
          //logo
          Container(
            padding: const EdgeInsets.only(top: 30, bottom: 25),
            alignment: Alignment.center,
            // child: Image.asset('images/logo.png')
            child:const Text("Logo goes here"),
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
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Create Account with Us",
              style: TextStyle(fontSize: 16),
            ),
          ),
          // email,
          Container(
            padding: const EdgeInsets.all(10),
            child: Form(
              //form key goes here
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F2ED),
                        border: OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(14),
                            ),
                        hintText: 'Your email',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F2ED),
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF9F2ED),
                        border: OutlineInputBorder(),
                        hintText: 'Confirm Password',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      
                      children: [
                        Checkbox(
                            value: agreed,
                            onChanged: (agreed) {
                              setState(() {
                                //agreed = ! agreed;
                              });
                            }),
                        const Text(
                            "By Sign Up you agree to our Privacy Policy and terms.")
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 50,
                    width: 160,
                    //decoration: BoxDecoration(borderRadius: ),
                    child: ElevatedButton(
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      onPressed: () {
                         Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: ((context) => const MyMainPage()
                                  )
                              ));
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: ((context) => const SignIn()
                                  )
                              ));
                            }, child: const Text("Log in"))
                      ],
                    ),
                  )
                ],
              ),

              //check box
            ),
          )
        ],
      ),
    ));
  }
}
