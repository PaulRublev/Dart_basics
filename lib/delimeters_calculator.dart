class DelimetersCalculator {
  int gcd(int a, int b) {
    if (a < b) {
      _swap(a, b);
    }
    return b != 0 ? gcd(b, a % b) : a;
  }

  int lcm(int a, int b) {
    return (a / gcd(a, b) * b).toInt();
  }

  List<int> factorize(int a) {
    List<int> multiplies = [];
    int div = 2;
    while (a > 1) {
      while (a % div == 0) {
        multiplies.add(div);
        a ~/= div;
      }
      div++;
    }
    return multiplies;
  }

  void _swap(int a, int b) {
    int tmp = a;
    a = b;
    b = tmp;
  }
}
