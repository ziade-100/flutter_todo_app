import 'package:flutter/material.dart';

class MyMainPage extends StatelessWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
       appBar: AppBar(
        backgroundColor: Color(0xFFF9F2ED),
        elevation: 0,
        leading: IconButton(
           icon: Icon(Icons.home),
          //icon: Image.asset('images/logo.png'),
          onPressed: (){},
          ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
            color: Color(0xFFF9F2ED),
              
            ),
            child: IconButton(
              onPressed: (){},
             icon: const Icon(
              Icons.filter,
               color: Colors.black,),
             ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFFF9F2ED),
            ),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.sort,
                color: Colors.black,),),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFFF9F2ED),
            ),
            child: IconButton(
              onPressed: (){},
               icon:const Icon(
                Icons.search,
                color: Colors.black,)),
          )
         
          
        ],
       ),
     );
  }
}