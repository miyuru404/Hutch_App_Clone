import 'package:fluttartest/home_page.dart';
import 'package:flutter/material.dart';

class LoyaltyPage extends StatefulWidget{
  const LoyaltyPage({super.key});
  @override
  State<LoyaltyPage>createState() => _LoyaltyPageState();

}

class _LoyaltyPageState extends State<LoyaltyPage>{
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
                  height: 100,
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