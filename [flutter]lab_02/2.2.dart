// 2.2 - W.A.P. to insert int numbers into List and display in terminal. (A)

import 'dart:io';

void main()
{
  var n,v;
  List<int> a = [];
  print("Enter your value :: ");
  n = int.parse(stdin.readLineSync()!);

  for(int i=1;i<=n;i++)
  {
    print("$i Element is :: ");
    v = int.parse(stdin.readLineSync()!);
    a.add(v);
  }
  print("List is :---");
  for(int i in a)
  {
    print(i);
  }
}
//D:/SOFTWARE/FLUTTER/flutter/bin/cache/dart-sdk/bin/dart.exe --enable-asserts --no-serve-devtools "D:\DARSHAN UNIVERSITY\Semester - 5\Flutter android\lib\[flutter]lab_2\2.2.dart"
// Enter your value ::
// 3
// 1 Element is ::
// 10
// 2 Element is ::
// 20
// 3 Element is ::
// 30
// List is :---
// 10
// 20
// 30