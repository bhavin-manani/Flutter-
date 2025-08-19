// 6.2 -  W.A.P. to create a registration screen using different widgets (Text, TextFromField, SizedBox, Radio, CheckBox, List, Button etc...) (B)

import 'package:flutter/material.dart';

class SixTwo extends StatefulWidget {
   SixTwo({super.key});

  @override
  State<SixTwo> createState() => _SixTwoState();
}

class _SixTwoState extends State<SixTwo> {
  bool passwordVisible = true;
  bool confirmPasswordVisible = true;
  String gender = "Male";
  bool isTermsAccepted = false;
  List<String> city = ["Rajkot", "Junaghad", "Jamnager", "Surat"];
  String? selectedcity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Practical - 06 (02) Regestration Form ")),
        backgroundColor: Colors.yellowAccent,
      ),
// ----------------------------------------------------------------------------------------------------------
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "User Name",
                  hintText: "Enter User Name ",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              SizedBox(height: 10),
// ----------------------------------------------------------------------------------------------------------
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email Address",
                  hintText: "Enter Email Address",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              SizedBox(height: 10),
// ----------------------------------------------------------------------------------------------------------
              TextFormField(
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    icon: Icon(passwordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              SizedBox(height: 10),
// ----------------------------------------------------------------------------------------------------------
              TextFormField(
                obscureText: confirmPasswordVisible,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Enter Confirm Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        confirmPasswordVisible = !confirmPasswordVisible;
                      });
                    },
                    icon: Icon(confirmPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              SizedBox(height: 10),
// ----------------------------------------------------------------------------------------------------------
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter Phone Number",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20),
// ----------------------------------------------------------------------------------------------------------
              Row(
                children: [
                  Text("Gender: "),
                  Expanded(
                    child: Row(
                      children: [
                        Radio(
                          value: "Male",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                        Text("Male"),

                        Radio(
                          value: "Female",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value!;
                            });
                          },
                        ),
                        Text("Female"),
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(height: 10),
// ----------------------------------------------------------------------------------------------------------
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "City",
                  hintText: "Select Your City",
                  prefixIcon: Icon(Icons.location_city),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                value: selectedcity,
                items: city.map((city) {
                  return DropdownMenuItem(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedcity = value;
                  });
                },
              ),

              SizedBox(height: 10),
// ----------------------------------------------------------------------------------------------------------
              Row(
                children: [
                  Checkbox(
                    value: isTermsAccepted,
                    onChanged: (value) {
                      setState(() {
                        isTermsAccepted = value!;
                      });
                    },
                  ),
                  Expanded(child: Text("I accept Terms & Conditions")),
                ],
              ),

              SizedBox(height: 20),
// ----------------------------------------------------------------------------------------------------------
              ElevatedButton(
                onPressed: () {
                  if (isTermsAccepted) {
                    print("Your registration is submitted successfully");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Registration Done"),
                        backgroundColor: Colors.blue,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Please accept Terms & Conditions"),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
                child: Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


