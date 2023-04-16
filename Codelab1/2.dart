/**
 * 1.Como crear una clase simple en Dart
  */

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $speed mph';
}

//un comentario
void main() {
  var bike = Bicycle(2, 1);
  print(bike);
}
