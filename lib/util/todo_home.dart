import 'package:flutter/material.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  State<MyMainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  int _selectedIndex = 0;
  void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF9F2ED),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.home,
            color: Colors.black,
          ),
          //icon: Image.asset('images/logo.png'),
          onPressed: () {},
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFFF9F2ED),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFFF9F2ED),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sort,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFFF9F2ED),
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
          )
        ],
      ),
      //body for the page
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 30),
          child: const Text(
            "Your TooDoo",
            style: TextStyle(fontSize: 30),
          ),
        ),
      

        Container(

          padding: const EdgeInsets.fromLTRB(20, 70, 10, 5),
          child: const Center(
              child: Text(
                  "Get Started by Creating Your Very \n First TooDoo")),
        ),
      ]),
      //floating button
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _setSelectedIndex,
          backgroundColor: Color(0xFFF9F2ED),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'My Account'),
          ]),
    );
  }
}
