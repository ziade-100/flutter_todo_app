import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:todo/util/save_pasword.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({Key? key}) : super(key: key);

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F2ED),
        title: const Text(
          "ziadewelde@gmail.com",
          style: TextStyle(color: Colors.black),
        ),
        leading: const BackButton(color: Colors.black),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
        //header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "Enter Code",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        //input field for accepting code
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFF9F2ED)),
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              // Second Input Field 
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  padding: const EdgeInsets.all(5),
                 height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const  Color(0xFFF9F2ED)),
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              // third Input Field 
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:  const Color(0xFFF9F2ED)),
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              // forth Input Field 
              const  SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 80,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xFFF9F2ED)),
                  child: const TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
            ]),
          ),
        ),
        // progress Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Container(
           alignment: Alignment.center,
           padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.45,
                  backgroundColor: Color(0xFFF9F2ED),
                  progressColor: Colors.orange,
                ),
                const Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text("45"),
                )
              ],
            ),
          ),
        ),
        //button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 150,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue, 
              borderRadius: BorderRadius.circular(15)),
              child: const Text("Submit", 
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),) ),
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const SaveNewPassword())
                  );
              }
          ),
          
          ),
        
      ]),
    );
  }
}
