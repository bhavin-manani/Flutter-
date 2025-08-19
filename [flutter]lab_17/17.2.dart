// 17.2 -  Create Student Model Class. (B)

class Student
{
  int id;
  var name;

  Student({required this.id,required this.name});

  get studentId => null;
  Map<String,dynamic> toMap(Student stu)
  {
    return {'id':stu.id,'name':stu.name};
  }

  static Student fromMap(Map<String,dynamic> stu) {
    return Student (id: stu['id'], name: stu['name']);
  }
}
