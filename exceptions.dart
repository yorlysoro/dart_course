void main() {
  try {
    int a = 10;
    int b = 0;
    int c = a ~/ b;
    print(c);
  } catch (e) {
    print(e);
  } finally {
    print("Finally");
  }
}
