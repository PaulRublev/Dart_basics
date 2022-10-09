import 'package:dart_basics/convertation_system.dart';
import 'package:dart_basics/delimeters_calculator.dart';
import 'package:dart_basics/search_num_in_string.dart' as search_num;
import 'package:dart_basics/word_repeat_counter.dart' as repeat_counter;
import 'package:dart_basics/search_digits.dart' as search_digits;
import 'package:dart_basics/point.dart';
import 'package:dart_basics/root_calculator.dart' as root;

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
  // 6) Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
  //    У данного класса реализуйте метод distanceTo(Point another), который возвращает
  //    расстояние от данной точки до точки в параметре. По желанию можете реализовать метод,
  //    принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника,
  //    который образуют данные точки. Реализуйте factory-конструкторы для данного класса,
  //    возвращающие начало координат, и ещё несколько на своё усмотрение (например, конструктор,
  //    возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).
  print('6 задание');
  Point a1 = Point(2, 3, 4);
  Point a2 = Point(4, 3, 2);
  Point a3 = Point.unitVector();
  Point a0 = Point.zero();
  print(
      'Расстояние между двумя точками с координатами $a0 и $a3: ${a3.distanceTo(a0)}');
  print('Примеры векторов заданных factory-конструктором:');
  print('Начало координат $a0, единичный вектор $a3');
  print(
      'Площадь треугольника, который образуют точки $a1, $a2, $a3: ${triangleArea(a1, a2, a3)}');
  // 7) Реализуйте метод, который вычисляет корень любой заданной степени из числа.
  //    Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на
  //    википедии как «Алгоритм нахождения корня n-й степени». Запрещается использовать
  //    методы math. В случае когда значение вернуть невозможно,
  //    необходимо бросать исключение с описанием ошибки.
  print('7 задание');
  var approximation = 0.001;
  var x1 = -8;
  var n1 = 3;
  print(
      'Корень $n1 степени из числа $x1: ${x1.rootCalculator(n1, approximation)}');
  var x2 = 111;
  var n2 = 4;
  print(
      'Корень $n2 степени из числа $x2: ${x2.rootCalculator(n2, approximation)}');
}
