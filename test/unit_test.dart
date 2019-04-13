import 'package:flutter_test/flutter_test.dart';
// import 'package:test/test.dart';
void main() {
  test('Test Addition', () {
    var answer = 42;
    expect(answer, 40+2);
  });
  test('Test Substraction', () {
    var answer = 42;
    expect(answer, 44-2);
  });
  test('Test Multiplicaion', () {
    var answer = 42;
    expect(answer, 6*7);
  });
  test('Test Division', () {
    var answer = 42;
    expect(answer, 84/2);
  });
}