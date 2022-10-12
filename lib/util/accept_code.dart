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
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
          child: const Text(
            "Enter Code",
            style: TextStyle(fontSize: 20),
          ),
        ),
        //input field for accepting code
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
            Container(
              padding: const EdgeInsets.all(5),
              height: 80,
              width: 80,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF9F2ED),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 80,
              width: 80,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF9F2ED),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 80,
              width: 80,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF9F2ED),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 80,
              width: 80,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF9F2ED),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
          ]),
        ),
        Container(
         alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(20, 5, 15, 3),
          child: Column(
            children: [
              LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.45,
                backgroundColor: Color(0xFFF9F2ED),
                progressColor: Colors.orange,
              ),
              const Padding(
                
                padding: EdgeInsets.fromLTRB(100, 5, 3, 3),
                child: Text("45"),
              )
            ],
          ),
        ),
        //button
        Container(
          height: 70,
          width: 150,
          padding: const EdgeInsets.all(15),
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=>const SaveNewPassword())
                );
            },
            child:const Text("Submit") ),
        ),
      ]),
    );
  }
}
