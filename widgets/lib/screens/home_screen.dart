import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello World", style: TextStyle(color: Colors.red)),
          SizedBox(height: 50),
          Text("Tuyo Nako", style: TextStyle(color: Colors.green)),
          Text(
            "Welcome To Mobile Legends",
            style: TextStyle(color: Colors.blue),
          ),

          Row(
            children: [
              Text("Call Of Duty", style: TextStyle(color: Colors.red)),
              SizedBox(width: 50),
              Text("Wow"),
              Text("Hello"),
            ],
          ),

          Container(
            height: 250,
            width: 250,
            color: Colors.blue,
            child: Center(
              child: Text(
                "Hello World",
                style: TextStyle(color: Colors.yellow),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
