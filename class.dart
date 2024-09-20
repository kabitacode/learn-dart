void main() {
  var animal = Animal('meow', 5, 10.2);
  animal.eat();
  animal.poop();
  animal.sleep();
}

class Animal {
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight);

  void eat() {
    weight = weight + 0.1;
    print('$name eat the chicken and his weight : $weight');
  }

  void sleep() {
    print('$name is sleeping.');
  }

  void poop() {
    print('$name is pooping.');
    weight = weight - 0.1;
  }
}
