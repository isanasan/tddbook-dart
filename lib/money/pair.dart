class Pair {
  final String from;
  final String to;

  Pair(this.from, this.to);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is Pair) {
      return from == other.from && to == other.to;
    } else {
      return false;
    }
  }
}
