Set<int> searchDigitsInWords(List<String> words) {
  Set<int> digitsInWords = {};
  var digits = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9
  };
  for (var i = 0; i < words.length; i++) {
    if (digits.containsKey(words[i])) {
      digitsInWords.add(digits[words[i]]!);
    }
  }
  return digitsInWords;
}
