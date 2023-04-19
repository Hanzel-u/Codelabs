// In the code below, try using these operators to implement updateStoredValue following the logic outlined in its documentation comment:

abstract class Store {
  int? storedNullableValue;

  /// If [storedNullableValue] is currently `null`,
  /// set it to the result of [calculateValue]
  /// or `0` if [calculateValue] returns `null`.
  void updateStoredValue() {
    storedNullableValue ??= calculateValue() ?? 0;  //this was TODO
  }

  /// Calculates a value to be used,
  /// potentially `null`.
  int? calculateValue();
}
