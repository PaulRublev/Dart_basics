Map<String, int> wordRepeatCounter(List<String> listOfWords) {
  Map<String, int> mapOfRepeats = {};
  for (var i = 0; i < listOfWords.length; i++) {
    if (mapOfRepeats.containsKey(listOfWords[i])) {
      mapOfRepeats[listOfWords[i]] = mapOfRepeats[listOfWords[i]]! + 1;
    } else {
      mapOfRepeats.addAll({listOfWords[i]: 1});
    }
  }
  return mapOfRepeats;
}
