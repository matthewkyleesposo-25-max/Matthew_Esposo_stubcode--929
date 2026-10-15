import 'package:flutter/material.dart';

class Prelimscreen extends StatefulWidget {
  const Prelimscreen({super.key});

  @override
  State<Prelimscreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Prelimscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Prelim Exam", style: TextStyle(color: Colors.blue)),
            SizedBox(height: 8),
            Text(
              "MATTHEW KYLE C. ESPOSO",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 20),

            // Box 1 (big, centered)
            Container(
              height: 180,
              width: 180,
              color: Colors.lightBlue,
              alignment: Alignment.center,
              child: Text("BOX 1", style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),

            // Box 2 and Box 3 side by side
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 180,
                  width: 180,
                  color: Colors.lightBlue,
                  alignment: Alignment.center,
                  child: Text("BOX 2", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(width: 20),
                Container(
                  height: 180,
                  width: 180,
                  color: Colors.lightBlue,
                  alignment: Alignment.center,
                  child: Text("BOX 3", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
