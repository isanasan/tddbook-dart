import 'package:tddbook_dart/money.dart';
import 'package:test/test.dart';

void main() {
  test('Multiplication', () {
    var five = Dollar(5);
    Dollar ten = five.times(2);
    expect(ten.amount, 10);

    Dollar fifteen = five.times(3);
    expect(fifteen.amount, 15);
  });
}
