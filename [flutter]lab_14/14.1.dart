//14.1 - W.A.P. Design PageView with 3D Page Transition Effect. (A).

import 'package:flutter/material.dart';

class FourteenOne extends StatelessWidget {
  const FourteenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Practical - 14 (01) Page Transition Effect"),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: PageController(viewportFraction: 0.3),
        children: [
          cardview(name: "Page - 01", bgcolor: Colors.black),
          cardview(name: "Page - 02", bgcolor: Colors.red),
          cardview(name: "Page - 03", bgcolor: Colors.cyanAccent),
          cardview(name: "Page - 04", bgcolor: Colors.yellow),
          cardview(name: "Page - 05", bgcolor: Colors.green),
          // cardview(name: "Page - 06", bgcolor: Colors.pinkAccent),
          // cardview(name: "Page - 07", bgcolor: Colors.orange),
        ],
      ),
    );
  }
}

Widget cardview({required String name, required bgcolor}) {
  return Card(
    color: bgcolor,
    child: Center(
      child: Text(name, style: TextStyle(color: Colors.white, fontSize: 50)),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}