import 'package:dart_basics/convertation_system.dart';
import 'package:dart_basics/delimeters_calculator.dart';

export 'package:dart_basics/delimeters_calculator.dart';
export 'package:dart_basics/convertation_system.dart';

void main(List<String> arguments) {
  // 1) Реализуйте методы вычисления НОД и НОК целых чисел.
  //    Реализуйте метод, который разбивает число на простые множители и возвращает их.
  print('1 задание.');
  var delimetersCalculator = DelimetersCalculator();
  final numbers = [150, 50, 45, 33, 99];
  print(
      'Результат НОД чисел ${numbers[0]} и ${numbers[1]}: ${delimetersCalculator.gcd(numbers[0], numbers[1])}');
  print(
      'Результат НОК чисел ${numbers[2]} и ${numbers[3]}: ${delimetersCalculator.lcm(numbers[2], numbers[3])}');
  print(
      'Разложение числа ${numbers[4]} на простые множители: ${delimetersCalculator.factorize(numbers[4]).join('*')}');

  // 2) Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
  print('2 задание');
  int dec = 321;
  int bin = 1111011;
  print(
      'Результат преобразования числа $dec в двоичную систему: ${dec.decimalToBinary()}');
  print(
      'Результат преобразования числа $bin в десятичную систему: ${bin.binaryToDecimal()}');
}
