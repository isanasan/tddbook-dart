import 'package:tddbook_dart/money/expression.dart';
import 'package:tddbook_dart/money/money.dart';
import 'package:tddbook_dart/money/pair.dart';

class Bank {
  final _rates = <Pair, int>{};

  Money reduce(Expression source, String to) {
    return source.reduce(this, to);
  }

  void addRate(String from, String to, int rate) {
    _rates[Pair(from, to)] = rate;
  }

  int rate(String from, String to) {
    int? result = _rates[Pair(from, to)];

    if (result == null) {
      // 本来はNotFoundRateExceptionを実装すべきだが今回は割愛する
      throw Exception('Not found rate');
    }

    return result;
  }
}
