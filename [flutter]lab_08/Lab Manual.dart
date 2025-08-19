
import 'package:flutter/material.dart';

class p1 extends StatefulWidget {
  const p1({super.key});

  @override
  State<p1> createState() => _p1State();
}

class _p1State extends State<p1> {
  @override

  List<Map<String,String>> contects = [
    {'name' : 'Harsh' , 'initial' : 'r'},
    {'name' : 'shubh' , 'initial' : 'd'},
    {'name' : 'busa' , 'initial' : 'd'},
    {'name' : 'Dipak' , 'initial' : 'd'},
    {'name' : 'amazon' , 'initial' : 'v'},
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("contect"),),
        body:ListView.builder(
            itemCount: contects.length,
            itemBuilder: (context,index){
              var contect = contects[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(contect['initial']!),
                  ),
                  title: Text(contect['name']!),
                  trailing: Icon(Icons.call),
                ),
              );
            }) ,
      ),
    );
  }
}