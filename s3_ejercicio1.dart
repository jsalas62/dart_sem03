class Usuario {
  String nombre;
  String email;
  String contrasena;

  Usuario(this.nombre, this.email, this.contrasena);
}

mixin Autenticacion {
  bool iniciarSesion(String email, String contrasena) {
    if (email == 'jorge.salas.l@tecsup.edu.pe' && contrasena == '123asd') {
      return true;
    }
    return false;
  }
}

class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado(String nombre, String email, String contrasena)
      : super(nombre, email, contrasena);
}

void main() {
  var usuario = UsuarioAutenticado('Jorge', 'jorge.salas.l@tecsup.edu.pe', '123asd');
  var sesionIniciada = usuario.iniciarSesion(usuario.email, usuario.contrasena);
  
  if (sesionIniciada) {
    print('Sesión iniciada. Bienvenido, ${usuario.nombre}');
  } else {
    print('Error al iniciar sesión. Verifique sus credenciales.');
  }

  // Intento de sesión fallido con credenciales incorrectas
  var otroUsuario = UsuarioAutenticado('Juan', 'juan@gmail.com', '54321');
  var sesionFallida = otroUsuario.iniciarSesion(otroUsuario.email, otroUsuario.contrasena);
  
  if (sesionFallida) {
    print('Sesión iniciada. Bienvenido, ${otroUsuario.nombre}');
  } else {
    print('Error al iniciar sesión. Verifique sus credenciales.');
  }
}
