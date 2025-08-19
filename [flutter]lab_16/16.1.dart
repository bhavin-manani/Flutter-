// SignUp page :--

import 'package:flutter/material.dart';
import 'package:project_flutter/%5Bflutter%5Dlab_16/sigunpPage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}
bool showText = true;

class _SignupState extends State<Signup> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _conformpassword = TextEditingController();
  final TextEditingController _contactno = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Practical - 16 (01) Navigation Demo :  Sign Up Page ")),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: 500,
            child: Column(
                children: [
                  Text("Name"),
                  TextFormField(
                    // obscureText: showText,
                    controller: _name,
                    decoration: InputDecoration(

                      labelText: "Name",
                      hintText: "Enter Name",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  Text("Email Address"),
                  TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Email",
                      border: OutlineInputBorder(),
                    ),
                    //--------------------------------------------------------
                  ),
                  Text("Password"),
                  TextFormField(
                    obscureText: showText,
                    controller: _password,
                    decoration: InputDecoration(

                      labelText: "Password",
                      hintText: "Enter Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  //------------------------------------------------
                  Text("Confirm Password"),
                  TextFormField(
                    obscureText: showText,
                    controller: _conformpassword,
                    decoration: InputDecoration(
                      labelText: "ConfirmPassword",
                      hintText: "Enter Confirm Password",
                      border: OutlineInputBorder(),
                    ),

                  ),
                  //-----------------------------------------------------------------
                  Text("Contact No."),
                  TextFormField(
                    controller: _contactno,
                    decoration: InputDecoration(
                      labelText: "Contact No.",
                      hintText: "Enter Contact No.",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Sixteen()));
                  }, child: Text("SignUp"))

                ]
            ),
          ),
        ),
      ),
    );
  }
}
