import 'package:dart_basics/convertation_system.dart';
import 'package:dart_basics/delimeters_calculator.dart';
import 'package:dart_basics/search_num_in_string.dart' as search_num;
import 'package:dart_basics/word_repeat_counter.dart' as repeat_counter;
import 'package:dart_basics/search_digits.dart' as search_digits;

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

  // 3) Реализуйте метод, который принимает строку слов, разделённых пробелами.
  //    Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
  print('3 задание');
  String text = '1i1 3323 4.4 4,5 5,,5 6,6.6 7.7,7 8,i 9.0 .1';
  print(
      'Найденные числа в строке $text: ${search_num.searchNumInString(text)}');
  // 4) Есть коллекция слов. Реализуйте метод, возвращающий Map.
  //    Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
  print('4 задание');
  var words = ['ab', 'bc', 'cd', 'bc', 'ef', 'bc', 'ab'];
  print('Подсчет слов в коллекции $words :');
  print(repeat_counter.wordRepeatCounter(words));
  // 5) Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
  //    Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
  //    Однако цифры встречаются в виде английских слов от zero до nine. Например,
  //    в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
  //    Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.
  print('5 задание');
  final wordsWithNumbers = [
    'one',
    'nine',
    'two',
    'three',
    'cat',
    'dog',
    'one',
    'nine',
    'none'
  ];
  print('Поиск цифр в словах $wordsWithNumbers:');
  print(search_digits.searchDigitsInWords(wordsWithNumbers));
}
