//12.1 - W.A.P. Design Contact List Ul use ListView to display a list of contact with CircleAvatar, Text, and Trailling Icon. (A)

import 'package:flutter/material.dart';

class TwelveOne extends StatefulWidget {
  const TwelveOne({super.key});

  @override
  State<TwelveOne> createState() => _TwelveOneState();
}

class _TwelveOneState extends State<TwelveOne> {
  List<Map<String,String>> contects =
      [
        {"name" : "Virat" , "initial":"V"},
        {"name" : "Rohit" , "initial":"R"},
        {"name" : "Jadeja" , "initial":"J"},
        {"name" : "Sachin" , "initial":"S"},
        {"name" : "Hardik" , "initial":"H"},
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Practical - 12 (01) Contact List UI")),
        backgroundColor: Colors.yellowAccent,
      ),
      body: ListView.builder(
          itemCount: contects.length,
          itemBuilder: (context,index)
          {
            return Card(
              child: ListTile(
                trailing: Icon(Icons.phone),
                title: Text(contects[index]['name']!),
                leading: CircleAvatar(
                  child: Text(contects[index]['initial']!),

                ),
              ),
            );
          }
      ),

      );
  }
}
