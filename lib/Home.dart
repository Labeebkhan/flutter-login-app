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
            padding: const EdgeInsets.only(top: 20, left: 14),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Hello, Labeeb', style: TextStyle(fontSize: 24)),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 97, 97, 97),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight, // 👈 Moves it to the left
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profileUi.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 80,
                    height: 80,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
