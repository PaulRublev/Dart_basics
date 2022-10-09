import 'dart:math';

class Point {
  int x;
  int y;
  int z;
  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }
  factory Point.unitVector() {
    return Point(1, 1, 1);
  }
  @override
  String toString() => '($x, $y, $z)';

  double distanceTo(Point another) =>
      (sqrt(pow((x - another.x), 2) +
                  pow((y - another.y), 2) +
                  pow((z - another.z), 2)) *
              1000)
          .round() /
      1000;
}

double triangleArea(Point a, Point b, Point c) {
  final sideA = a.distanceTo(b);
  final sideB = a.distanceTo(c);
  final sideC = b.distanceTo(c);
  double p = (sideA + sideB + sideC) / 2;
  return (sqrt(p * (p - sideA) * (p - sideB) * (p - sideC)) * 1000).round() /
      1000;
}
