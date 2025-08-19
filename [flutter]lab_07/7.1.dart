// 7.1) W.A.P. to display an Image into the Image asset widget from the asset folder. (A)

import 'package:flutter/material.dart';

class SevenOne extends StatelessWidget {
  const SevenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Practical - 07 (01) Profile Image" )),
        backgroundColor: Colors.yellowAccent,
      ),
      backgroundColor: Colors.black12,
      body: Center(
        child: Image.asset('assets/images/c.jpg'),
      ),
    );
  }
}
