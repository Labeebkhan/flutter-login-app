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
          body: Padding(
            padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Top Row with greeting text and profile image
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Greeting Text Column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6),
                        Text(
                          'Hello, Labeeb',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Welcome to HomeScreen',
                          style: TextStyle(
                            color: Color.fromARGB(255, 119, 119, 119),
                          ),
                        ),
                      ], // end of greeting column children
                    ), // end of greeting column
                    /// Profile Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'assets/images/profileUi.jpg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ), // end of ClipRRect
                  ], // end of Row children
                ), // end of Row

                SizedBox(height: 50),

                /// Search Bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 32,
                    ), //Prefix Icon is placed in start
                    suffixIcon: IconButton(
                      onPressed: () {
                        // open filter options
                      },
                      icon: Image.asset(
                        'assets/images/Tune.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Color(0xFFF1F1F1),
                    filled: true,
                  ),
                ), // end of TextField
              ], // end of Column children
            ), // end of Column
          ), // end of Padding
        ), // end of Scaffold
      ), // end of SafeArea
    ); // end of MaterialApp
  } // end of build method
} // end of _HomeScreenState class
