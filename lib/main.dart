// an interface named Role
abstract class Role {
  void displayRole();
}

// a class Person
class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print('Role: Person');
  }

  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }

  String getAddress() {
    return address;
  }
}

// a class Student that extends Person
class Student extends Person {
  int studentID;
  List<double> courseScores = [];

  Student(String name, int age, String address, this.studentID) : super(name, age, address);

  @override
  void displayRole() {
    print('Role: Student');
  }

  void addCourseScore(double score) {
    courseScores.add(score);
  }

  double calculateAverageScore() {
    double total = 0;
    for (var score in courseScores) {
      total += score;
    }
    return total / courseScores.length;
  }
}

//a class Teacher that extends Person
class Teacher extends Person {
  int teacherID;
  List<String> coursesTaught = [];

  Teacher(String name, int age, String address, this.teacherID) : super(name, age, address);

  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void addCourseTaught(String course) {
    coursesTaught.add(course);
  }

  void displayCoursesTaught() {
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}

//a class StudentManagementSystem
void main() {
  Student student = Student('John', 20, '123 Main St', 1001);
  student.addCourseScore(90);
  student.addCourseScore(85);
  student.addCourseScore(82);

  print('Student Information:');
  student.displayRole();
  print('Name: ${student.getName()}');
  print('Age: ${student.getAge()}');
  print('Address: ${student.getAddress()}');
  print('Average Score: ${student.calculateAverageScore()}');

  Teacher teacher = Teacher('Mr. Smith', 35, '456 Oak St', 2001);
  teacher.addCourseTaught('Math');
  teacher.addCourseTaught('English');
  teacher.addCourseTaught('Bangla');

  print('\nTeacher Information:');
  teacher.displayRole();
  print('Name: ${teacher.getName()}');
  print('Age: ${teacher.getAge()}');
  print('Address: ${teacher.getAddress()}');
  teacher.displayCoursesTaught();
}
