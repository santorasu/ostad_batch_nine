

import 'package:ostad_batch_nine/main.dart';

class Teacher extends Person {
  late String teacherID;
  late List<String> coursesTaught;

  Teacher(
      String name, int age, String address,this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTought() {
    print("Course Taught: ");
    for (String course in coursesTaught) {
      print("- $course");
    }
  }
}
