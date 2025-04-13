import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 6)),
                        Text(
                          'Hello, Labeeb',
                          style: TextStyle(color: Colors.black, fontSize: 21),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Welcome to HomeScreen',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 119, 119, 119),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    //ClipRRect widget to make the image round
                    borderRadius: BorderRadius.circular(40),
                    // Half of width/height for round
                    child: Image.asset(
                      'assets/images/profileUi.jpg',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
