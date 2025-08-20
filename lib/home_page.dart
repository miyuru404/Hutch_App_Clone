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
              color: Color(0xFF8A6C1A),
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // rounded corners
              ),
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: SizedBox(
                  width: double.infinity, // set width of card
                  height: 200,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Left side
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Good Morning!",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "miyuru bashitha ",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 50),
                              // Placeholder for another card on the left
                              SizedBox(
                                width: 150,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    print("Button pressed!");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white.withOpacity(0.5), // semi-transparent
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                        color: Colors.white, // border color
                                        width: 2,            // border thickness
                                      ),
                                    ),
                                  ),

                                  child: const Text(
                                    "main Balance 75.01 LKR " ,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),

                          // Right side
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // Placeholder for first card
                              SizedBox(
                                width: 150,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    print("Button pressed!");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white.withOpacity(0.0), // semi-transparent
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                        color: Colors.white, // border color
                                        width: 2,            // border thickness
                                      ),
                                    ),
                                  ),

                                  child: const Text(
                                    "0767478255 " ,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              // Placeholder for second card
                              SizedBox(
                                width: 110,
                                height: 45,
                                child: ElevatedButton(
                                  onPressed: () {
                                    print("Button pressed!");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white, // semi-transparent
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: const BorderSide(
                                        color: Colors.white, // border color
                                        width: 2,            // border thickness
                                      ),
                                    ),
                                  ),

                                  child: const Text(
                                    "GOLD" ,
                                    style: TextStyle(
                                      color: Color(0xFFB07623),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              SizedBox(
                                width: 150,
                                height: 40,
                                child: ElevatedButton(
                                  onPressed: () {
                                    print("Button pressed!");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white, // semi-transparent
                                    elevation: 6,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                        color: Colors.white, // border color
                                        width: 2,            // border thickness
                                      ),
                                    ),
                                  ),

                                  child: const Text(
                                    "RECHAEGE " ,
                                    style: TextStyle(
                                      color: Color(0xFFFF6601),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                              // Button
                            ],
                          ),
                        ],
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