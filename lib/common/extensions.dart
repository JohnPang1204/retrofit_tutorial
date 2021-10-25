extension IterableX on Iterable? {
  bool get isNullOrEmpty {
    if (this == null) {
      return true;
    } else {
      return this!.isEmpty;
    }
  }

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}