// In the code below, try using conditional property access in the stringLength method to fix the error and to return the length of the string or null if it is null:

int? stringLength(String? nullableString) {
  return nullableString?.length;
}
