void main() {
  myHighOrderFunction('hellobeo', (num1, num2) => num1 + num2);
}

void myHighOrderFunction(
    String msg, int Function(int num1, int num2) myFunction) {
  print(msg);
  print(myFunction(1, 4));
}
