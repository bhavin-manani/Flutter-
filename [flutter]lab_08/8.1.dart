//8.1 -  W.A.P. to Design simple calculator Ul using Column, TextField, ElevatedButton, and Row. (A)
import 'package:flutter/material.dart';

class EightOne extends StatelessWidget {
  const EightOne ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Practical - 08 (01) Calculator")
      ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              child: Container(
                height: 150,
                child: Text("0",style: TextStyle(fontSize: 40)
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttons(text: "AC",bgcolor: Colors.orangeAccent),
                      buttons(text: "7"),
                      buttons(text: "4"),
                      buttons(text: "1"),
                      buttons(text: "00"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttons(text: "()",bgcolor: Colors.orangeAccent),
                      buttons(text: "8"),
                      buttons(text: "5"),
                      buttons(text: "2"),
                      buttons(text: "0"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttons(text: "%",bgcolor: Colors.orangeAccent),
                      buttons(text: "9"),
                      buttons(text: "6"),
                      buttons(text: "3"),
                      buttons(text: ".")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buttons(text: "/",bgcolor: Colors.orangeAccent),
                      buttons(text: "*",bgcolor: Colors.orangeAccent),
                      buttons(text: "-",bgcolor: Colors.orangeAccent),
                      buttons(text: "+",bgcolor: Colors.orangeAccent),
                      buttons(text: "=",bgcolor: Colors.orangeAccent)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

ElevatedButton buttons({required text, bgcolor = Colors.white })
{
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        shape: CircleBorder(),
        padding: EdgeInsets.all(30)
    ),
    onPressed: () {},
    child: Text(
      text,
      style: TextStyle(fontSize: 26, color: Colors.black,height: 1),
    ),
  );
}