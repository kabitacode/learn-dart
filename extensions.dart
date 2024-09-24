void main() {
  var unsortedNumbers = '1';
  // var unsortedNumbers = [2, 5, 3, 1, 4];
  // print(unsortedNumbers);
  // var sortedNumbers = unsortedNumbers.sortAsc();
  // print(sortedNumbers);

  print(unsortedNumbers.parseToInt());
}

extension Sorting on List<int> {
  List<int> sortAsc() {
    var list = this;
    var length = this.length;

    for (int i = 0; i < length - 1; i++) {
      int min = i;
      for (int j = i + 1; j < length; j++) {
        if (list[j] < list[min]) {
          min = j;
        }
      }

      int tmp = list[min];
      list[min] = list[i];
      list[i] = tmp;
    }

    return list;
  }
}

extension ParsingNumber on String {
  int parseToInt() {
    return int.parse(this);
  }
}
