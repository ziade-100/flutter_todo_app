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
    backgroundColor: Colors.white,
    resizeToAvoidBottomInset: false,
     body:SingleChildScrollView(
     // padding: const EdgeInsets.all(12),
      physics: BouncingScrollPhysics(),
      child:Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
       
          Container(
            padding: const EdgeInsets.only(top: 40, bottom: 25),
            alignment: Alignment.center,
             child: Image.asset('lib/images/logo.png', height:100, width:100),
            //child:const Text("Logo goes here"),
          ),
          //title
          Container(
            padding: const EdgeInsets.only(top: 25, bottom: 20),
            alignment: Alignment.center,
            child: const Text(
              "TooDoo",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            //padding: const EdgeInsets.all(5),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Create Account with Us",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
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
                   decoration: BoxDecoration(
                      color: Color(0xFFF9F2ED),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                     
                        border:InputBorder.none,
                        hintText: 'Your email',
                      ),
                    ),
                  ),
                    const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F2ED),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.all(5),
                     decoration: BoxDecoration(
                      color: Color(0xFFF9F2ED),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Confirm Password',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  //container for agrement button 
                  // Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Checkbox(
                  //             value: agreed,
                  //             onChanged: (agreed) {
                  //               setState(() {
                  //                 //agreed = ! agreed;
                  //               });
                  //             }),
                  //         Text(
                  //             "By Sign Up you agree to "),
                  //             Text("ou Privacy Policy and terms.")
                  //       ],
                  //     ),
                  
                  
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20) ),
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
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
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
