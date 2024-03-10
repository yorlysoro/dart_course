void main() {
  Map<String, dynamic> person = {'name': 'Yorlys', 'age': 18};
  person.forEach((key, value) {
    print("$key: $value");
  });
}
