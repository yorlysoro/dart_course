class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

class Employee extends Person {
  String department;
  Employee(String name, int age, this.department) : super(name, age);
  void display() {
    super.display();
    print("Department: $department");
  }
}

void main() {
  Employee employee = Employee("Yorlys", 18, "IT");
  employee.display();
}
