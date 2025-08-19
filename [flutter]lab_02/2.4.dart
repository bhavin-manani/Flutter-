// 2.4 - W.A.P. to insert double into List and display in terminal and do sum of all numbers and print it with 2 decimal only. Ex: Total
// = 22.39998 => 22.40 (A)

import 'dart:io';

void main()
{
  var n,v;
  double ans=0;
  List<double> a = [];
  print("Enter  value :: ");
  n = int.parse(stdin.readLineSync()!);

  for(int i=0;i<n;i++)
  {
    v = double.parse(stdin.readLineSync()!);
    a.add(v);
  }
  ans = a.reduce((a,b) => a+b);
  print(" Your list Sum (2 decimal only) :: ");

   // for(int i=0;i<n;i++)
   // {
   // ans+=a[i];
   // }
  print(ans.toStringAsFixed(2));
  print(" Your list Sum  (Double):: $ans");

}
//D:/SOFTWARE/FLUTTER/flutter/bin/cache/dart-sdk/bin/dart.exe --enable-asserts --no-serve-devtools "D:\DARSHAN UNIVERSITY\Semester - 5\Flutter android\lib\[flutter]lab_2\2.4.dart"
// Enter  value ::
// 2
// 22.39997
// 22.39998
//  Your list Sum (2 decimal only) ::
// 44.80
//  Your list Sum  (Double):: 44.799949999999995