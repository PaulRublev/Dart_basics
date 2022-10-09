extension RootCalculator on num {
  num rootCalculator(int rootDegree, num appr) {
    if (rootDegree <= 0 || (this < 0 && rootDegree % 2 == 0)) {
      throw ArgumentError(
          'Отрицательное значение степени корня либо отрицательное число с четной степенью.');
    } else {
      num root = this / rootDegree;
      num next = this;
      while (_abs(root - next) > appr) {
        next = root;
        root = 1 /
            rootDegree *
            ((rootDegree - 1) * root + this / _power(root, (rootDegree - 1)));
      }
      return (root / appr).round() * appr;
    }
  }
}

num _power(num number, int degree) {
  num result = 1;
  if (number == 0) {
    result = 0;
  } else {
    for (var i = 0; i < degree; i++) {
      result *= number;
    }
  }
  return result;
}

num _abs(x) => x >= 0 ? x : x * (-1);
