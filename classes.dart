class Person {
  late String name;
  late int age;
  void display() {
    print("Name: $name");
    print("Age: $age");
  }

  Person(name, age) {
    this.name = name;
    this.age = age;
  }
}

void main() {
  Person person = Person("Yorlys", 18);
  person.display();
}
