// 6.1 -  W.A.P. to Add password visibility icon in the Text field. (A)


import 'package:flutter/material.dart';

class SixOne extends StatefulWidget {

  SixOne({super.key});

  @override
  State<SixOne> createState() => _SixOneState();
}

class _SixOneState extends State<SixOne> {
  bool showText = true;

  final formKey = GlobalKey<FormState>();

  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Practical - 06 (01)")),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Container(
            width: 500,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Text("Email Address"),
                ),
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
                Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Text("Password"),
                ),
                TextFormField(
                  obscureText: showText,
                  controller: _password,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed:(){
                      setState((){
                        showText = !showText;
                      });
                    },
                        icon:Icon(showText?Icons.visibility_off:Icons. visibility)
                    ),
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

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print("Form Succesfully submited");
                      }
                    },
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
