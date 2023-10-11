import 'package:tddbook_dart/money/money.dart';

class Franc extends Money {
  Franc(amount) : super(amount);

  @override
  Money times(int multiplier) {
    return Franc(amount * multiplier);
  }
}
