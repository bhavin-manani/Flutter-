// 7.2) W.A.P. to use Stack widget and show text upon an Image. (A)

import 'package:flutter/material.dart';

class SevenTwo extends StatelessWidget {
  const SevenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Center(child: Text("Practical - 07 (02) Stack widget" )),
        backgroundColor: Colors.yellowAccent,
      ),
      backgroundColor: Colors.black12,
          body: Center(
        child: Stack(
          children: [
            Image.asset('assets/images/d.jpg'),
            Positioned
              (
                top:150,
                right:250,

                child: Text("Hello Darshan University",style: TextStyle(fontSize: 50,color: Colors.deepPurple),)
            )
          ],
        ),
    ),
    );
  }
}
