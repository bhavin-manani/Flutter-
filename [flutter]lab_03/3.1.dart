//3.1 -  Create a class named Candidate with Candidate_ID, Candidate_Name, Candidate_Age, Candidate_Weight and
// Candidate_Height data members. Also create a method GetCandidateDetails() and DisplayCandidateDetails(}. Create main
// method to demonstrate the Candidate class. (A)

import 'dart:io';

class Candidate
{
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double? Candidate_Height;

  void GetCandidateDetails()
  {
    print("Enter id :: ");
    this.Candidate_ID = int.parse(stdin.readLineSync()!);

    print("Enter Name :: ");
    this.Candidate_Name = (stdin.readLineSync()!);

    print("Enter Age :: ");
    this.Candidate_Age = int.parse(stdin.readLineSync()!);

    print("Enter Weight :: ");
    this.Candidate_Weight = double.parse(stdin.readLineSync()!);

    print("Enter Height :: ");
    this.Candidate_Height = double.parse(stdin.readLineSync()!);

  }
  void DisplayCandidateDetails()
  {
    print("-----------------------");
    print("Id is :: $Candidate_ID");
    print("Name is :: $Candidate_Name");
    print("Age is :: $Candidate_Age");
    print("Weight is :: $Candidate_Weight");
    print("Height is :: $Candidate_Height");
  }
}

void main()
{
  Candidate cd = Candidate();
  cd.GetCandidateDetails();
  cd.DisplayCandidateDetails();
}

//D:/SOFTWARE/FLUTTER/flutter/bin/cache/dart-sdk/bin/dart.exe --enable-asserts --no-serve-devtools "D:\DARSHAN UNIVERSITY\Semester - 5\Flutter android\lib\[flutter]lab_03\3.1.dart"
// Enter id ::
// 23020201101
// Enter Name ::
// bhavin
// Enter Age ::
// 19
// Enter Weight ::
// 80
// Enter Height ::
// 5.7
// -----------------------
// Id is :: 23020201101
// Name is :: bhavin
// Age is :: 19
// Weight is :: 80.0
// Height is :: 5.7