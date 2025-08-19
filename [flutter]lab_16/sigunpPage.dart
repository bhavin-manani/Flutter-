// 16.1 -  W.A.P. to navigate from one page to another page using material page route. (A)

// Log In page :--

import 'package:flutter/material.dart';
import '16.1.dart';
class Sixteen extends StatefulWidget {
  const Sixteen({super.key});
  @override
  State<Sixteen> createState() => _SixteenState();
}

class _SixteenState extends State<Sixteen> {
  bool showText = true;
  final formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Practical - 16 (01) Navigation Demo :  Log In Page ")
      ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: SizedBox(
            width: 500,
            child: Column(
              children: [
                Text("Email Address"),
                TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter Email",
                    border: OutlineInputBorder(),
                  ),
                ),
// --------------------------------------------------------------------------------------
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
// --------------------------------------------------------------------------------------
                SizedBox(height: 10,),
// --------------------------------------------------------------------------------------
                ElevatedButton(onPressed: () {null;},
                    child: Text("Submit")
                ),
                SizedBox(height: 10,),

                ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                    child: Text("Login"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}