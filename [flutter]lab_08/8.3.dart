//SurveyForm
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     home: SurveyForm(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class SurveyForm extends StatefulWidget {
//   const SurveyForm({super.key});
//
//   @override
//   State<SurveyForm> createState() => _SurveyFormState();
// }
//
// class _SurveyFormState extends State<SurveyForm> {
//   final nameController = TextEditingController();
//   String? gender;
//   bool isCricket = false;
//   bool isFootball = false;
//   bool isMusic = false;
//
//   void submitForm() {
//     String name = nameController.text;
//     String selectedGender = gender ?? "Not selected";
//     List<String> hobbies = [];
//     if (isCricket) hobbies.add("Cricket");
//     if (isFootball) hobbies.add("Football");
//     if (isMusic) hobbies.add("Music");
//
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text("Survey Result"),
//         content: Text(
//             "Name: $name\nGender: $selectedGender\nHobbies: ${hobbies.join(', ')}"),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text("OK"),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Survey Form"),
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text("Enter Your Name:"),
//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Your Name",
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Text("Select Gender:"),
//             RadioListTile(
//               title: const Text("Male"),
//               value: "Male",
//               groupValue: gender,
//               onChanged: (value) {
//                 setState(() {
//                   gender = value.toString();
//                 });
//               },
//             ),
//             RadioListTile(
//               title: const Text("Female"),
//               value: "Female",
//               groupValue: gender,
//               onChanged: (value) {
//                 setState(() {
//                   gender = value.toString();
//                 });
//               },
//             ),
//             const SizedBox(height: 10),
//             const Text("Select Hobbies:"),
//             CheckboxListTile(
//               title: const Text("Cricket"),
//               value: isCricket,
//               onChanged: (value) {
//                 setState(() {
//                   isCricket = value!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: const Text("Football"),
//               value: isFootball,
//               onChanged: (value) {
//                 setState(() {
//                   isFootball = value!;
//                 });
//               },
//             ),
//             CheckboxListTile(
//               title: const Text("Music"),
//               value: isMusic,
//               onChanged: (value) {
//                 setState(() {
//                   isMusic = value!;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             Center(
//               child: ElevatedButton(
//                 onPressed: submitForm,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.teal,
//                 ),
//                 child: const Text("Submit"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//



// //To-Do List
// //
// // import 'package:flutter/material.dart';
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'To-Do List',
// //       home: ToDoList(),
// //     );
// //   }
// // }
// //
// // class ToDoList extends StatefulWidget {
// //   const ToDoList({super.key});
// //
// //   @override
// //   State<ToDoList> createState() => _ToDoListState();
// // }
// //
// // class _ToDoListState extends State<ToDoList> {
// //   final List<Map<String, dynamic>> tasks = [
// //     {"task": "Study Flutter", "done": false},
// //     {"task": "Complete Assignment", "done": false},
// //     {"task": "Go for a Walk", "done": false},
// //   ];
// //
// //   void toggleTask(int index) {
// //     setState(() {
// //       tasks[index]["done"] = !tasks[index]["done"];
// //     });
// //   }
// //
// //   void addTask() {
// //     setState(() {
// //       tasks.add({"task": "New Task", "done": false});
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('To-Do List'),
// //         backgroundColor: Colors.green,
// //         centerTitle: true,
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             const Text(
// //               "Tasks:",
// //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //             ),
// //             const SizedBox(height: 10),
// //             ...tasks.asMap().entries.map((entry) {
// //               int idx = entry.key;
// //               var task = entry.value;
// //               return CheckboxListTile(
// //                 title: Text(
// //                   task["task"],
// //                   style: TextStyle(
// //                     decoration: task["done"] ? TextDecoration.lineThrough : null,
// //                   ),
// //                 ),
// //                 value: task["done"],
// //                 onChanged: (value) {
// //                   toggleTask(idx);
// //                 },
// //               );
// //             }).toList(),
// //             const SizedBox(height: 20),
// //             Center(
// //               child: ElevatedButton(
// //                 onPressed: addTask,
// //                 child: const Text("Add Task"),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//








//MusicPlayerUI
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// // Root widget
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Music Player',
//       home: MusicPlayerUI(),
//     );
//   }
// }
//
// // Music Player UI
// class MusicPlayerUI extends StatelessWidget {
//   const MusicPlayerUI({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Music Player"),
//         centerTitle: true,
//         backgroundColor: Colors.indigo,
//       ),
//       body: Center(
//         child: Card(
//           elevation: 10,
//           margin: const EdgeInsets.all(20),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(24),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Icon(
//                   Icons.library_music,
//                   size: 100,
//                   color: Colors.indigo,
//                 ),
//                 const SizedBox(height: 20),
//                 const Text(
//                   "Best of 90s",
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "by Classic Hits",
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         // Previous Song
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.indigo,
//                         shape: const CircleBorder(),
//                         padding: const EdgeInsets.all(16),
//                       ),
//                       child: const Icon(Icons.skip_previous, color: Colors.white),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Play or Pause
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.indigo,
//                         shape: const CircleBorder(),
//                         padding: const EdgeInsets.all(20),
//                       ),
//                       child: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Next Song
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.indigo,
//                         shape: const CircleBorder(),
//                         padding: const EdgeInsets.all(16),
//                       ),
//                       child: const Icon(Icons.skip_next, color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
