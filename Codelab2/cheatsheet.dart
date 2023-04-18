
//interpolación de cadenas
String stringify(int x, int y) {
  return '${x.toString() + ' ' + y.toString()}';
}

//variables anulables
acceptNull() {
  String? name = "Jane";
  String? address;
}

//operadores conscientes de nulo
knowIsNull() {
  int? a;
  a ??= 3;
  print(a);

  a ??=5;
  print(a);

  print(1 ?? 3);
  print(null ?? 12);
}

//ejercicio consciente de nulo
class exerciseNull {
  String? foo = 'a string';
  String? bar; // = null

  // Substitute an operator that makes 'a string' be assigned to baz.
  void assign(){
    String? baz = foo ?? this.bar;
  }

  void updateSomeVars() {
    // Substitute an operator that makes 'a string' be assigned to bar.
    this.bar ??= 'a string';
  }
}

//acceso condicional a la propiedad
// This method should return the uppercase version of `str`
// or null if `str` is null.
String? upperCaseIt(String? str) {
  // Try conditionally accessing the `toUpperCase` method here.
  return str?.toUpperCase();
}

//literales de coleccion
collectionLiterals() {
  // Assign this a list containing 'a', 'b', and 'c' in that order:
  final aListOfStrings = ['a', 'b', 'c'];

  // Assign this a set containing 3, 4, and 5:
  final aSetOfInts = {3, 4, 5};

  // Assign this a map of String to int so that aMapOfStringsToInts['myKey'] returns 12:
  final aMapOfStringsToInts = {'myKey': 12};

  // Assign this an empty List<double>:
  final anEmptyListOfDouble = <double>[];

  // Assign this an empty Set<String>:
  final anEmptySetOfString = <String>[];

  // Assign this an empty Map of double to int:
  final anEmptyMapOfDoublesToInts = <double, int>{};
}

//sintaxis de flecha
class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Returns the product of the above values:
  int get product => this.value1 * this.value2 * this.value3;

  // Adds 1 to value1:
  void incrementValue1() => this.value1++;

  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'):
  String joinWithCommas(List<String> strings) => strings.join(',');
}

//cascadas
class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  // Create a single statement that will update and return obj:
  return obj
      ..anInt = 1
      ..aString = 'String!'
      ..aList.add(3)
      ..allDone();
}

//getters y setters
class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  //devuelve la suma de los precios
  double get total => _prices.fold(0, (e, t) => e + t);

  //Un colocador que reemplaza la lista por una nueva,
  // siempre que la nueva lista no contenga precios negativos
  // (en cuyo caso, el colocador debe lanzar un InvalidPriceException).
  set prices(List<double> value) {
    if (value.any((p) => p < 0)) {
      throw InvalidPriceException();
    }

    _prices = value;
  }
}

//Parámetros posicionales opcionales
String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  var total = '$a';
  if (b != null) total = '$total,$b';
  if (c != null) total = '$total,$c';
  if (d != null) total = '$total,$d';
  if (e != null) total = '$total,$e';
  return total;
}

//parametros con nombre
class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
    this.anInt = 1,
    this.aString = 'Old!',
    this.aDouble = 2.0,
  });

  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    return MyDataObject(anInt: newInt ?? this.anInt, aString: newString ?? this.aString, aDouble: newDouble ?? this.aDouble);
  }
}

//Excepciones

//usando this en un constructor

//Listas de inicializadores

//Constructores con nombre

//constructores de fábricas

//Redirigir constructores

//Constructores constantes



main() {
  //print(stringify(2, 3));
  //knowIsNull();
  //print(upperCaseIt(''));
  //ShoppingCart();
  //print(joinWithCommas(1,4));

  // var myDataObject = new MyDataObject();
  // print(myDataObject.copyWith());


}