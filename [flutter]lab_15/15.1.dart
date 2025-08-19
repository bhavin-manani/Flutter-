//15.1 -  W.A.P. to use TabView and display different pages on different tab clicks. (A)

import 'package:flutter/material.dart';

class FifteenOne extends StatelessWidget {
  const FifteenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
        child: Text("Practical - 15 (01) TabView "),
      ),

          backgroundColor: Colors.yellowAccent,
          bottom: TabBar(
            tabs: [
              
              Tab(child: Column(children: [Icon(Icons.home), Text("Home")])
              ),
              Tab(
                child: Column(children: [Icon(Icons.info), Text("About US")]),
              ),
              Tab(
                child: Column(children: [Icon(Icons.phone), Text("Contact US")]),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "Home",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "About US",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "Contact US",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
