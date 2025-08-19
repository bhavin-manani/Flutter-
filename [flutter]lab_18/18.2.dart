//studentModel:----

class Students {
  int? studentId;
  String? studentName;
  String? studentEnrollmentNo;
  String? semester;
  String? branch;
  String? mobile;
  String? password;

  Students({
    this.studentId,
    this.studentName,
    this.studentEnrollmentNo,
    this.semester,
    this.branch,
    this.mobile,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'studentId': studentId,
      'studentName': studentName,
      'studentEnrollmentNo': studentEnrollmentNo,
      'semester': semester,
      'branch': branch,
      'mobile': mobile,
      'password': password,
    };
  }

  factory Students.fromMap(Map<String, dynamic> map) {
    return Students(
      studentId: map['studentId'],
      studentName: map['studentName'],
      studentEnrollmentNo: map['studentEnrollmentNo'],
      semester: map['semester'],
      branch: map['branch'],
      mobile: map['mobile'],
      password: map['password'],
    );
  }
}
