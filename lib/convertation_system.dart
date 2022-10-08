import 'dart:math';

extension ConvertationSystem on int {
  int decimalToBinary() {
    List<int> listBinary = [];
    int a = this;
    var b = 2;
    while (a > 1) {
      listBinary.add(a % b);
      a ~/= b;
    }
    listBinary.add(a);
    return int.parse(listBinary.reversed.join(''));
  }

  int binaryToDecimal() {
    String stringBinary = toString();
    int result = 0;
    for (var i = stringBinary.length - 1; i >= 0; i--) {
      result += int.parse(stringBinary[stringBinary.length - 1 - i]) *
          pow(2, i).toInt();
    }
    return result;
  }
}
