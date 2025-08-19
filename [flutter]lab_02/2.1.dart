  // 2.1 - . W.A.P. to count number of even or odd number from an array of n numbers. (A)


import 'dart:io';

void main()
{
  var n,v,even=0,odd=0;
  List<int> a = [];
  print("Enter your value :: ");
  n = int.parse(stdin.readLineSync()!);

  for(int i=1;i<=n;i++)
  {
    v = int.parse(stdin.readLineSync()!);
    a.add(v);
  }

  for(int i in a)
  {
    if(i%2 == 0)
    {
      even++;
    }
    else
    {
      odd++;
    }
  }
  print("Even Number is:$even");
  print("odd number is: $odd");
}
//D:/SOFTWARE/FLUTTER/flutter/bin/cache/dart-sdk/bin/dart.exe --enable-asserts --no-serve-devtools "D:\DARSHAN UNIVERSITY\Semester - 5\Flutter android\lib\[flutter]lab_2\2.1.dart"
  // Enter your value ::
  // 5
  // 0
  // 10
  // 53
  // 13
  // 20
  // Even Number is:3
  // odd number is: 2