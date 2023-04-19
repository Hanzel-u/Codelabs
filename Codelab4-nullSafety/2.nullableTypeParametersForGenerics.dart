// Exercise: Nullable type parameters for generics
// Type parameters for generics can also be nullable or non-nullable. Try using question marks to correct the type declarations of aNullableListOfStrings and aListOfNullableStrings:

void main() {
  List<String?> aListOfStrings = ['one', 'two', 'three'];
  List<String>? aNullableListOfStrings;
  List<String?> aListOfNullableStrings = ['one', null, 'three'];

  print('aListOfStrings is $aListOfStrings.');
  print('aNullableListOfStrings is $aNullableListOfStrings.');
  print('aListOfNullableStrings is $aListOfNullableStrings.');
}