double calculateIntegral(Function f, double a, double b, int eps) {
  double s = (f(a) + f(b)) / 2;
  double dX = (b - a) / eps;
  for (var i = 1; i <= eps - 1; i++) {
    s += f(a + i * dX);
  }
  return dX * s;
}
