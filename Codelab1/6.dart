/**
 * 6. Como usar Dart para la programación funcional
 */

// class WannabeFunction {
//   String call(String a, String b, String c) => '$a $b $c!';
// }

// var wf = WannabeFunction();
// var out = wf('Hi', 'there,', 'gang');

// main() => print(out);

/**---------------------------------------------------------------- */

String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];

  //codigo imperativo
  // for (var length in values) {
  //   print(scream(length));
  // }

  //codigo funcional
  values.skip(1).take(3).map(scream).forEach(print);
}

/**
 * Este código en Dart define una función llamada scream que toma un parámetro entero length y devuelve una cadena que comienza con la letra "A", seguida de length letras "a" en minúscula y termina con un signo de exclamación. Por ejemplo, scream(3) devuelve la cadena "Aaa!".

  Luego, el código define una lista de valores numéricos [1, 2, 3, 5, 10, 50] y realiza una serie de operaciones en ella utilizando los métodos skip, take, map y forEach en cascada.

  El método skip(1) elimina el primer elemento de la lista, por lo que se obtiene la lista [2, 3, 5, 10, 50].
  El método take(3) toma los primeros 3 elementos de la lista, por lo que se obtiene la lista [2, 3, 5].
  El método map(scream) aplica la función scream a cada elemento de la lista. En este caso, scream es una función que toma un valor entero y devuelve una cadena. Por lo tanto, [2, 3, 5] se convierte en ['Aaah!', 'Aaaah!', 'Aaaaaah!'].
  Finalmente, el método forEach(print) itera sobre cada elemento de la lista y lo imprime en la consola.
*/
