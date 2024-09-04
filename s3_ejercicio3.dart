class Empleado {
  String nombre;
  String apellido;
  double salario;
  int horasTrabajadas;

  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

mixin Bonificaciones {
  double calcularBonificacion(double salario) {
    if (salario < 2000) {
      return salario * 0.10;  
    } else if (salario >= 2000 && salario < 5000) {
      return salario * 0.07;  
    } else {
      return salario * 0.05; 
    }
  }
}

class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(String nombre, String apellido, double salario, int horasTrabajadas)
      : super(nombre, apellido, salario, horasTrabajadas);
}

void main() {
  List<EmpleadoConBonificaciones> empleados = [
    EmpleadoConBonificaciones('Carlos', 'Pérez', 1800, 40),
    EmpleadoConBonificaciones('Ana', 'González', 3000, 40),
    EmpleadoConBonificaciones('Luis', 'Martínez', 5200, 40),
    EmpleadoConBonificaciones('Marta', 'López', 4500, 40)
  ];

  for (var empleado in empleados) {
    double bonificacion = empleado.calcularBonificacion(empleado.salario);
    print('Empleado: ${empleado.nombre} ${empleado.apellido}, Bonificación: \$${bonificacion}');
  }
}
