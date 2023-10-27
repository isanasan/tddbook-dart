import 'package:tddbook_dart/money/money.dart';

abstract interface class Expression {
  Money reduce(String to);
}
