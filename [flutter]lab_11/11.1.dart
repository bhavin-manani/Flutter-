//11.1 -  W.A.P. to create list of numbers and display using ListView. (A)


import 'package:flutter/material.dart';

class ElevenOne  extends StatefulWidget {
  ElevenOne ({super.key});

  @override
  State<ElevenOne> createState() => _ElevenOneState();
}

class _ElevenOneState extends State<ElevenOne> {

  List<int> numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Practical - 11 (01) List of Numbers Using ListView")),
        backgroundColor: Colors.yellowAccent,
      ),
      body: ListView(
        children: numbers.map((a)
            {

              return ListTile(title: Text(a.toString()),);
            },).toList()
        ),
      );
  }
}

