import 'dart:io';

void main() {
  String? food = "as";
  String hello = "hello world!";
  print(hello);

  var c = 0;
  c += 5;

  if (2 > c && 2 + 4 == 5) {
    print('yup');
  } else {
    print('not');
  }

  // try {
  //   stdout.write('Masukkan suhu dalam Fahrenheit: ');
  //   var fahrenheit = num.parse(stdin.readLineSync()!);
  //   var celsius = (fahrenheit - 32) * 5 / 9;
  //   print('$fahrenheit derajat Fahrenheit = $celsius derajat celsius');
  // } catch (e) {
  //   print('Error = $e');
  // }

  birthday('zul', 1998);
  var price = 300000;
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');

  String? favoriteFood = 'ayam goreng';

  buyFood(favoriteFood!);
  // booleans();
  var score = 85;

  print('Nilai Anda: ${calculateScore(score)}');
}

void birthday(String name, int age) {
  var ages = 2025 - age;
  print('Happy Birthday, you are now $ages years old');
}

double average(num? num1, num? num2) => (num1! + num2!) / 2;

void other() {
  var isAvailableForDiscount = true;
  var price = 300000;
  num discount = 0;

  if (isAvailableForDiscount) {
    discount = 10 / 100 * price;
  }
  if (isAvailableForDiscount) {
    discount = 10 / 100 * price;
  }
}

num checkDiscount(num price) {
  num discount = 0; // pembuatan variabel baru dengan scope lebih kecil
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  return discount;
}

void buyFood(String food) {
  if (food == null) {
    print('$food is good');
  } else {
    print('not good');
  }
}

void booleans() {
  // ignore: dead_code
  if ((true || false) && (false || false)) {
    print('true');
  } else {
    print('false');
  }
}

String calculateScore(num score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'E';
  }
}
