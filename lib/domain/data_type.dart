enum DataType {
  temperature,
  symbol,
}

class MatchNotFoundException implements Exception {
  final String cause;
  MatchNotFoundException(this.cause);
}

extension DataTypePatternMatch on DataType {
  T when<T>({
    required T Function() temperature,
    required T Function() symbol,
  }) {
    final d = {
      DataType.temperature: () => temperature(),
      DataType.symbol: () => symbol(),
    };

    return d[this]!();
  }
}
