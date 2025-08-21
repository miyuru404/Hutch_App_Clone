import 'package:fluttartest/screens/home_page.dart';
import 'package:fluttartest/screens/loyalty_page.dart';
import 'package:fluttartest/screens/side_menu.dart';
import 'package:flutter/material.dart';
import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // removes the debug banner
      title: 'Hutch Clone',
      theme: ThemeData(
        primarySwatch: Colors.orange,
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
  bool _isDrawerOpen = false;

  final List<Map<String, dynamic>> _pages = [
    {"page": const HomePage(), "title": "HUTCH"},
    {"page": const LoyaltyPage(), "title": "Junior Internet"},
    {"page": const LoyaltyPage(), "title": "Loyalty"},
    {"page": const LoyaltyPage(), "title": "Packages"},
    {"page": const LoyaltyPage(), "title": "VAS"}
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main Page Content
          Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFFFF6601),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _isDrawerOpen = true; // open drawer
                  });
                },
              ),
              title: Text(
                _pages[_selectedIndex]["title"],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5,
                ),
              ),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.scanner_sharp),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.email_outlined),
                  color: Colors.white,
                  onPressed: () {},
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
                BottomNavigationBarItem(icon: Icon(Icons.handshake), label: "Loyalty"),
                BottomNavigationBarItem(icon: Icon(Icons.book), label: "Packages"),
                BottomNavigationBarItem(icon: Icon(Icons.star), label: "VAS"),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                print("404");
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),

          // Dimmed background when menu open
          if (_isDrawerOpen)
            GestureDetector(
              onTap: () {
                setState(() {
                  _isDrawerOpen = false;
                });
              },
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),

          // Side Menu
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: 0,
            bottom: 0,
            left: _isDrawerOpen ? 0 : -MediaQuery.of(context).size.width * 0.8,
            child: SideMenu(
              onClose: () {
                setState(() {
                  _isDrawerOpen = false;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
