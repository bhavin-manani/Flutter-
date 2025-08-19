//5.3 - W.A.P. to do validation in the login screen. (Email Validation & Password Validation) on Button click. (A)\\

import 'package:flutter/material.dart';

class FiveThree extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  FiveThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Practical - 05 (03)")),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Container(
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
                  validator: (value) {
                    final emailPattern = RegExp(r'^[\w.-]+@[\w]+\.+[\w]{2,4}$');
                    if (value == null || value.isEmpty)
                    {
                      return "Enter Email Address";
                    }
                    else if (!emailPattern.hasMatch(value))
                    {
                      return "Enter Proper Email Address";
                    }
                    else
                    {
                      return null;
                    }
                  },
                ),
                Text("Password"),
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    final passwordPattern = RegExp(
                      r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",
                    );
                    if (value == null || value.isEmpty)
                    {
                      return "Please enter password";
                    }
                    else if (value.length < 8)
                    {
                      return "Password must be of 8 characters or more";
                    }
                    else if (!passwordPattern.hasMatch(value))
                    {
                      return "invalid format";
                    }
                    else
                    {
                      return null;
                    }
                  },
                ),

                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print("Form Succesfully submited");
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
