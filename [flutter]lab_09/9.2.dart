// 9.2 -  W.A.P. to Build a quote Generator App using Column, Text, ElevatedButton, and SnackBar (B)

import 'package:flutter/material.dart';
class NineTwo extends StatefulWidget {
   NineTwo({super.key});

  @override
  State<NineTwo> createState() => _NineTwoState();
}

class _NineTwoState extends State<NineTwo> {

  Widget quoteCard({required String qoute,
    String? author}){
    return Card(
      child: ListTile(
        title: Text(qoute,style: TextStyle(
          fontWeight: FontWeight.bold,),),
        subtitle: Text(
            "Author :: ${author ?? "Unknown"} "),
        trailing: IconButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("copy to clipboard")));
        }, icon: Icon(Icons.copy)
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Practical - 09 (02) Quote Generator App ")),
          backgroundColor: Colors.yellowAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              quoteCard(qoute: "Hello Darshan University"),
              quoteCard(qoute: "Hello Darshan University"),
              quoteCard(qoute: "Hello Darshan University"),
              quoteCard(qoute: "Hello Darshan University"),
              quoteCard(qoute: "Hello Darshan University"),
              quoteCard(qoute: "Hello Darshan University"),
            ],
          ),
        ),
      );

  }
}

