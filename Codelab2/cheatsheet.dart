
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


main() {
  //print(stringify(2, 3));
  knowIsNull();
}