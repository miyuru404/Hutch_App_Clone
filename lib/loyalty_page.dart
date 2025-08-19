import 'package:fluttartest/home_page.dart';
import 'package:flutter/material.dart';

class LoyaltyPage extends StatefulWidget{
  const LoyaltyPage({super.key});
  @override
  State<LoyaltyPage>createState() => _LoyaltyPageState();

}

class _LoyaltyPageState extends State<LoyaltyPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children:<Widget> [
              const Text('second page')
            ],
          )
        )
    );
  }

}