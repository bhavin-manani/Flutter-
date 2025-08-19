// 11.2 -  W.A.P. to create list of numbers and display using ListVew.builder. (A)

import 'package:flutter/material.dart';


class ElevenTwo extends StatefulWidget {
  ElevenTwo({super.key});

  @override
  State<ElevenTwo> createState() => _ElevenTwoState();
}

class _ElevenTwoState extends State<ElevenTwo> {
  List<int> numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Practical - 11 (02) List of Numbers Using ListVew.builder")),
        backgroundColor: Colors.yellowAccent,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(index.toString()),);
        },
      ),
    );
  }
}


