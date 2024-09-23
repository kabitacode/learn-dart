void main() {
  var animals = PropertiesMethods('meow', 3, 4.1);
  animals.poop();
  animals.sleep();
}

class PropertiesMethods {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  PropertiesMethods(this._name, this._age, this._weight);

  set catName(String value) {
    _name = value;
  }

  double get weight => _weight;
  int get age => _age;

  void sleep() {
    print('cat $_name is sleeping.');
  }

  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }
}
