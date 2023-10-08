import 'package:tddbook_dart/money/money.dart';

class Dollar extends Money {
  Dollar(amount) : super(amount);

  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }
}
