// 5.1 - W.A.P. to display “hello world” using Text widget. Change color & size of text using different properties. (A)
//5.2 - W.A.P. to use TextField and print the input value into the terminal using the controller. (A)
//5.3 - W.A.P. to do validation in the login screen. (Email Validation & Password Validation) on Button click. (A)










































import 'package:flutter/material.dart';
class inputfield extends StatelessWidget {

  final newcontorller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
          backgroundColor: Colors.lime,
        ),
        body: Column(
          children: [
            Padding (
                padding: EdgeInsets.all(8.0),
                child :  TextField(
                  controller: newcontorller,
                  decoration: InputDecoration(
                      hintText: "Enter name",
                      labelText: "Here",
                      border: OutlineInputBorder()
                  ),
                )
            ),
            ElevatedButton(onPressed: (){
              print(newcontorller.text);
            }, child: Text("Print")),
          ],
        ),
      ),
    );
  }
}
