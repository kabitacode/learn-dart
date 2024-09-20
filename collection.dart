void main() {
  list();
  sett();
  union();
}

void list() {
  List<int> numberlist = [1, 2, 3];
  List<String> stringlist = ['hello', 'dunia'];
  stringlist.add("aku");
  stringlist.insert(0, "apa");
  // stringlist.removeAt(0);
  // stringlist.removeLast();
  // stringlist.removeRange(0, 1);

  // for (var i = 0; i < stringlist.length; i++) {
  //   print(stringlist[i]);
  // }

  // null-aware spread operator
  List<dynamic>? lists = [];
  List<dynamic>? listss = [0, ...?lists];
  print('list : $listss');
  // End
}

void sett() {
  Set<int> initset = new Set.from([1, 2, 3, 4]);
  initset.add(5);
  initset.addAll({6, 7});
  // initset.remove(4);
  print(initset.elementAt(1)); //get value
  print('set : $initset');
}

void union() {
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print("union: $union");
  print("intersection: $intersection");
}

void keyvalue() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  capital['Bandung'] = 'Indonesia';

  var mapKeys = capital.keys;
  print("mapKeys: $mapKeys");

  var mapValues = capital.values;
  print("mapValues: $mapValues");
}
