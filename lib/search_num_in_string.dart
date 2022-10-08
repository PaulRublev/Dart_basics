List<num> searchNumInString(String text) {
  List<num> numbers = [];
  List<String> words = text.split(' ');
  for (int i = 0; i < words.length; i++) {
    if (num.tryParse(words[i]) != null) {
      numbers.add(num.parse(words[i]));
    }
  }
  return numbers;
}
