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

  print('Your grade => ${calculateScore(score)}');
  // doWhile();

  funcbreak();
}

void funcbreak() {
  for (int i = 11; i < 20; i++) {
    if (i % 11 == 0) {
      continue;
    }
    stdout.write('$i ');
    if (i % 5 == 0) {
      break;
    }
  }
}

void doWhile() {
  int i = 1;
  // while (i < 100) {
  //   print(i);
  //   i++;
  // }
  do {
    print(i);
    i++;
  } while (i < 10);
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

void prime() {
  var primeNumbers = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    31,
    37,
    41,
    43,
    47,
    53,
    59,
    61,
    67,
    73,
    79,
    83,
    89,
    97
  ];

  var searchNumber = 13;
  print('Prime numbers among 1-100: $searchNumber');

  for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber is a prime number to-${i + 1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }
}

void loopContinue() {
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }
}

void switchCase() {
  final firstNumber = 13;
  final secondNumber = 18;
  final operator = "+";

  switch (operator) {
    case '+':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}');
      break;
    case '-':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}');
      break;
    case '*':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}');
      break;
    case '/':
      print(
          '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}');
      break;
    default:
      print('Operator tidak ditemukan');
  }
}
