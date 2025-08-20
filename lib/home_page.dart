import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String text = "HUTCH";
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.orange,
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // rounded corners
              ),
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: InkWell(
                onTap: () {
                  print("Card tapped!");
                },
                child: SizedBox(
                  width: double.infinity, // set width of card
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: const Text("This is my first Card"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }






}