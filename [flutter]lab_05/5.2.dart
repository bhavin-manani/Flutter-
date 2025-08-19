//5.2 - W.A.P. to use TextField and print the input value into the terminal using the controller. (A)
import 'package:flutter/material.dart';
class FiveTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController five = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Practical - 05 (02)"),),backgroundColor: Colors .yellowAccent,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Enter Your Name :: ",style:TextStyle(color: Colors.black87,),),
            ),
            TextField(controller: five,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(onPressed: (){
                print(five.text);
              },
                  child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }
}

























































// import 'package:flutter/material.dart';
// class FiveTwo extends StatelessWidget {
//   const FiveTwo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Center(child: Text("Practical - 02 (2)"),),backgroundColor: Colors.yellowAccent,
//         ),
//         body: Column(
//             children : [
//
//             ]
//
//               )
//             ]
//
//         ),
//       ),
//     );
//   }
// }
