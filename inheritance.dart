import 'animal.dart';

void main() {
  var cat = Cat('hello', 10, 10, 'gray');
  cat.walk();
}

class Cat extends Animal {
  final String catColor;

  Cat(String name, int age, double weight, String catColor)
      : this.catColor = catColor,
        super(name, age, weight);

  void walk() {
    print('$name is walking..');
  }
}
