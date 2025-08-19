// // 1) W.A.P. to Add password visibility icon in the Text field. (A)
// // 2) W.A.P. to create a registration screen using different widgets (Text, TextFromField, SizedBox, Radio, CheckBox, List, Button etc...) (B)
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Birthday Card")),
//         body: Center(
//           child: Card(
//             elevation: 5,
//             margin: const EdgeInsets.all(20),
//             child: Padding(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Image.asset('assets/images/birthday.png'),
//                   const SizedBox(height: 10),
//                   const Text(
//                     'Happy Birthday!',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 5),
//                   const Text('Wishing you a wonderful year ahead.'),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: RegistrationScreen(),
//     );
//   }
// }
//
// class RegistrationScreen extends StatefulWidget {
//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }
//
// class _RegistrationScreenState extends State<RegistrationScreen> {
//   String gender = 'Male';
//   bool agree = false;
//   String selectedCourse = 'Flutter';
//
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//
//   List<String> courses = ['Flutter', 'React', 'Angular'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Registration Form')),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             Text('Name'),
//             TextFormField(controller: nameController),
//             SizedBox(height: 10),
//
//             Text('Email'),
//             TextFormField(controller: emailController),
//             SizedBox(height: 10),
//
//             Text('Gender'),
//             Row(
//               children: [
//                 Radio(
//                   value: 'Male',
//                   groupValue: gender,
//                   onChanged: (val) {
//                     setState(() {
//                       gender = val!;
//                     });
//                   },
//                 ),
//                 Text('Male'),
//                 Radio(
//                   value: 'Female',
//                   groupValue: gender,
//                   onChanged: (val) {
//                     setState(() {
//                       gender = val!;
//                     });
//                   },
//                 ),
//                 Text('Female'),
//               ],
//             ),
//             SizedBox(height: 10),
//
//             Text('Select Course'),
//             DropdownButton(
//               value: selectedCourse,
//               items: courses.map((String course) {
//                 return DropdownMenuItem(value: course, child: Text(course));
//               }).toList(),
//               onChanged: (val) {
//                 setState(() {
//                   selectedCourse = val!;
//                 });
//               },
//             ),
//             SizedBox(height: 10),
//
//             Row(
//               children: [
//                 Checkbox(
//                   value: agree,
//                   onChanged: (val) {
//                     setState(() {
//                       agree = val!;
//                     });
//                   },
//                 ),
//                 Text('I agree to terms & conditions')
//               ],
//             ),
//             SizedBox(height: 20),
//
//             ElevatedButton(
//               onPressed: () {
//                 if (agree) {
//                   showDialog(
//                     context: context,
//                     builder: (_) => AlertDialog(
//                       title: Text("Submitted"),
//                       content: Text("Thank you, ${nameController.text}!"),
//                     ),
//                   );
//                 }
//               },
//               child: Text('Register'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
