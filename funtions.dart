void main() {
  print(square(2));
  print(square(3));
  var list = [1, 2, 3, 4, 5];
  list.forEach((num) => print(square(num)));
  list.forEach((num) => print(square2(num)));
  list.forEach((num) => print(sum(num1: num, num2: num)));
}

dynamic square(var num) {
  return num * num;
}

dynamic square2(var num) => num * num;
dynamic sum({var num1, var num2}) => num1 + num2;
