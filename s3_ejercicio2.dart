class Calculadora {
  // Operaciones básicas
  void suma(double a, double b) {
    print('Llamando a suma');
  }

  void resta(double a, double b) {
    print('Llamando a resta');
  }

  void multiplicacion(double a, double b) {
    print('Llamando a multiplicacion');
  }

  void division(double a, double b) {
    print('Llamando a division');
    if (b == 0) {
      print("No se puede dividir por cero");
    }
  }
}

mixin OperacionesAvanzadas {
  // Potencia
  void potencia(double base, int exponente) {
    print('Llamando a potencia');
  }
}

mixin OperacionesAvanzadas2 {
  // Raíz cuadrada
  void raizCuadrada(double numero) {
    print('Llamando a raizCuadrada');
  }
}

class CalculadoraAvanzada extends Calculadora with OperacionesAvanzadas, OperacionesAvanzadas2 {}

void main() {
  var calculadora = CalculadoraAvanzada();
  
  // Operaciones básicas
  calculadora.suma(10, 5);
  calculadora.resta(10, 5);
  calculadora.multiplicacion(10, 5);
  calculadora.division(10, 5);
  
  // Operaciones avanzadas
  calculadora.potencia(2, 3);
  calculadora.raizCuadrada(25);
}
