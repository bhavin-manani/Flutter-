//5.1 - W.A.P. to display “hello world” using Text widget. Change color & size of text using different properties. (A).

import 'package:flutter/material.dart';

class FiveOne extends StatelessWidget {
  const FiveOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Practical - 05 (01)')),
          backgroundColor: Colors.yellowAccent,
        ),
        body: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 60,
              height: 2,
              backgroundColor: Colors.cyanAccent,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}






























// 6.2 -  W.A.P. to create a registration screen using different widgets (Text, TextFromField, SizedBox, Radio, CheckBox, List, Button etc...) (B)

import 'package:flutter/material.dart';

class SixTwo extends StatefulWidget {

  SixTwo({super.key});

  @override
  State<SixTwo> createState() => _SixTwoState();
}

class _SixTwoState extends State<SixTwo> {
  String gender = "Male";
  bool agree = false;

  String SelectCountry = "India";
  List<String> Country  = ['England', 'Australia', 'Portugiz'];


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
                  padding: const EdgeInsets.all(10.0),
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
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Text("Password"),
                // ),
                // TextFormField(
                //   obscureText: showText,
                //   controller: _password,
                //   decoration: InputDecoration(
                //     suffixIcon: IconButton(onPressed:(){
                //       setState((){
                //         showText = !showText;
                //       });
                //     }, icon:Icon(showText?Icons.visibility_off:Icons. visibility)),
                //     labelText: "Password",
                //     hintText: "Enter Password",
                //     border: OutlineInputBorder(),
                //   ),
                //   validator: (value) {
                //     final passwordPattern = RegExp(
                //       r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",
                //     );
                //     if (value == null || value.isEmpty)
                //     {
                //       return "Please enter password";
                //     }
                //     else if (value.length < 8)
                //     {
                //       return "Password must be of 8 characters or more";
                //     }
                //     else if (!passwordPattern.hasMatch(value))
                //     {
                //       return "invalid format";
                //     }
                //     else
                //     {
                //       return null;
                //     }
                //   },
                // ),
                Text('Gender'),
                Row(
                  children: [
                    Radio(
                      value: 'Male',
                      groupValue: gender,
                      onChanged: (val) {
                        setState(() {
                          gender = val!;
                        });
                      },
                    ),
                    Text('Male'),
                    Radio(
                      value: 'Female',
                      groupValue: gender,
                      onChanged: (val) {
                        setState(() {
                          gender = val!;
                        });
                      },
                    ),
                    Text('Female'),
                  ],
                ),




                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate() && agree) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(print("Form Succesfully submited"))  ),);

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




// 1) W.A.P. to Add password visibility icon in the Text field. (A)
// 2) W.A.P. to create a registration screen using different widgets (Text, TextFromField, SizedBox, Radio, CheckBox, List, Button etc...) (B)
