// 7.3) W.A.P. to create a birthday card using different widgets. (A)

import 'package:flutter/material.dart';

class SevenThree extends StatelessWidget {
  const SevenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Text("Practical - 07 (03) Birthday Card")),
        backgroundColor: Colors.yellowAccent,
      ),
      backgroundColor: Colors.black12,
      body: Center(
        child: Card(
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin:  EdgeInsets.all(20),
          child: Padding(
            padding:  EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 111,
                  backgroundImage: AssetImage('assets/images/e.jpg'),
                ),
                 Text(
                  'Happy Birthday!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                 Text(
                  'Wishing you a wonderful year ahead!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                 SizedBox(height: 20),
                 Icon(
                  Icons.cake,
                  color: Colors.blue,
                  size: 36,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
