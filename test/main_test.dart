import 'package:flutter_test/flutter_test.dart';

int sumar(int a, int b) => a + b;
bool esPar(int numero) => numero % 2 == 0;
String saludar(String nombre) => 'Hola, $nombre';

void main() {
  test('Suma correcta', () {
    expect(sumar(2, 3), 5);
  });

  test('Número es par', () {
    expect(esPar(4), true);
  });

  test('Saludo correcto', () {
    expect(saludar('Erick'), 'Hola, Erick');
  });
}
