import 'package:flutter/material.dart';

import 'home_page.dart';
import 'loyalty_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color(0xFFFF6601)),
      ),
      home: const MainPage(title: 'HUTCH'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});
  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;



  final List<Map<String, dynamic>> _pages = [
    {"page": HomePage(), "title": "HUTCH"},
    {"page": LoyaltyPage(), "title": "Junior Internet"},
    {"page": LoyaltyPage(), "title": "Loyalty"},
    {"page": LoyaltyPage(), "title": "Packages"},
    {"page": LoyaltyPage(), "title": "VAS"}
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF6601),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.white,
          onPressed: () {
            // left icon pressed
          },
        ),
        title: Text(_pages[_selectedIndex]["title"],
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,              // font size (default is 14)
            fontWeight: FontWeight.w900, // bold
            letterSpacing: 1.5,          // spacing between letters
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.scanner_sharp),
            color: Colors.white,
            onPressed: () {
              // search pressed
            },
          ),
          IconButton(
            icon: const Icon(Icons.email_outlined),
            color: Colors.white,
            onPressed: () {
              // menu pressed
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex]["page"],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFFF6601),
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shield), label: "Junior Internet"),
          BottomNavigationBarItem(icon: Icon(Icons.handshake), label: "loyalty"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Packages"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "VAS"),




        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("404");
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
