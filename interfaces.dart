abstract class shape {
  void draw();
}

class Rectangle implements shape {
  @override
  void draw() {
    print("Drawing a rectangle");
  }
}

void main() {
  Rectangle rectangle = Rectangle();
  rectangle.draw();
}
