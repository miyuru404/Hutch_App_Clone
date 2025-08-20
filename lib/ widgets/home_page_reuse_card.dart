import 'package:fluttartest/screens/home_page.dart';
import 'package:flutter/material.dart';

class ReuseCard extends StatefulWidget{

  final IconData icon;      // icon parameter
  final String title;       // text parameter

  const ReuseCard({super.key, required this.icon, required this.title});

  @override
  State<ReuseCard>createState() => _ReuseCardState();

}

class _ReuseCardState extends State<ReuseCard>{

  @override
  Widget build(BuildContext context) {

    return Card(
      color: Colors.white,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // rounded corners
      ),
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: InkWell(
        onTap: () {
          print("Card tapped!");
        },
        child: SizedBox(
          width: double.infinity, // set width of card
          height: 100,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        widget.icon,          // pick any icon from the Icons class
                        size: 40,            // set size
                        color: Colors.grey, // set color
                      ),

                    ],

                  )
                ],
              ),
          ),
        ),
      ),
    );
  }


}