void main() {
  int age = 18;
  if (age >= 18) {
    print("You can vote");
  } else if (age >= 19) {
    print("You can vote");
  } else {
    print("You can't vote");
  }
  switch (age) {
    case 18:
      print("You can vote");
      break;
    case 19:
      print("You can vote");
      break;
    case 20:
      print("You can vote");
      break;
    default:
      print("You can't vote");
  }
}
