//3.3 - W.A.P. to ƒnd friends detail by their name using dictionary. (Create local dictionary and search from it using Map & Model
// Class).

import 'dart:io';

class Friends
{
  String? Name; 
  int? Age;

  Friends(this.Name,this.Age);

  void Display()
  {
   // print("-----------------------");
    print("Name is :: $Name");
    print("Age is :: $Age");
  }
}
void main()
{
  Map<String,Friends> friends =
      {
        "bhavin" : Friends("bhavin",19),
        "jash" : Friends("jash",18),
      };
  print("Enter Name :: ");
  String? a = stdin.readLineSync();

  if(friends.containsKey(a));
  {
    print("Friends Fouded");
    print("----------------------------------------------------");
    Friends f = friends[a]!;
    f.Display();
  }
}

//D:/SOFTWARE/FLUTTER/flutter/bin/cache/dart-sdk/bin/dart.exe --enable-asserts --no-serve-devtools "D:\DARSHAN UNIVERSITY\Semester - 5\Flutter android\lib\[flutter]lab_03\3.3.dart"
// Enter Name ::
// bhavin
// Friends Fouded
// ----------------------------------------------------
// Name is :: bhavin
// Age is :: 19
//-------------------------------------------------------------------------------------------------------------
//D:/SOFTWARE/FLUTTER/flutter/bin/cache/dart-sdk/bin/dart.exe --enable-asserts --no-serve-devtools "D:\DARSHAN UNIVERSITY\Semester - 5\Flutter android\lib\[flutter]lab_03\3.3.dart"
// Enter Name ::
// jash
// Friends Fouded
// ----------------------------------------------------
// Name is :: jash
// Age is :: 18