// 7.4)W.A.P. to display an Image from a WEB URL using a cached network Image. (B)


import 'package:flutter/material.dart';

class SevenFour extends StatelessWidget {
  const SevenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Practical - 07 (04) Profile Image" )),
        backgroundColor: Colors.yellowAccent,
      ),
      backgroundColor: Colors.black12,
      body: Center(
        child: Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')
      ),
    );
  }
}