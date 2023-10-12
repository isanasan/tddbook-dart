import 'package:tddbook_dart/money/money.dart';

class Dollar extends Money {
  Dollar(amount, currency) : super(amount, currency);

  @override
  Money times(int multiplier) {
    return Money.dollar(amount * multiplier);
  }
}
