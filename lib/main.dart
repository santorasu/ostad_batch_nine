import 'package:ostad_batch_nine/teacher.dart';

abstract class Role {
  void displayRole();
}

class Person implements Role {
  late String name;
  late int age;
  late String address;

  Person(this.name, this.age, this.address);
  @override
  void displayRole() {
    // print("This is override method");
  }
}

class Student extends Person {
  late String studentID;
  late String grade;
  late List<double> courseScores;

  Student(
    String name,
    int age,
    String address,
    this.studentID,
    this.grade,
    this.courseScores,
  ) : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double cal_Average() {
    if (courseScores.isEmpty) {
      return 0.0;
    }
    double total = 0;
    for (int i = 0; i < courseScores.length; i++) {
      total += courseScores[i];
    }
    double result = total / courseScores.length;
    print(result);
    return (result);
  }
}

void main() {
  Student st1 = Student("Rasu", 12, "Pabna", "4308", "3.5", [80, 90, 95]);
  print("Student Information");
  st1.displayRole();
  print("Name: ${st1.name}");
  print("Age: ${st1.age}");
  print("Age: ${st1.address}");
  print("Average Score: ${st1.cal_Average()}");
  print("\n");
  Teacher teacher1 = Teacher("Farhan", 22, "Dhaka", "T4343", ['math', 'English', 'Bangla']);

  print("Teacher Information");
  teacher1.displayRole();
  print("Name: ${teacher1.name}");
  print("Name: ${teacher1.age}");
  print("Name: ${teacher1.address}");
  teacher1.displayCoursesTought();
}
