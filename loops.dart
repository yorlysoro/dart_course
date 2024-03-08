void main() {
  print("For Loop");
  for (int i = 0; i < 10; i++) {
    print(i);
  }
  print("For Loop with break");
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
  print("For Loop with continue");
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
  //foreach
  print("Foreach Loop");
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }
  //while
  print("While Loop");
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }
  //do while
  print("Do While Loop");
  int j = 0;
  do {
    print(j);
    j++;
  } while (j < 10);
}
