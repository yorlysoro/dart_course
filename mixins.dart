mixin Like {
  int count = 0;
  void like() {
    count++;
    print("Like");
  }
}

class Content with Like {
  void display() {
    print("Display");
  }
}

void main() {
  Content content = Content();
  content.display();
  content.like();
  print(content.count);
}
