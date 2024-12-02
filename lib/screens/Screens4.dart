import 'package:flutter/material.dart';
import 'package:crudapp_eva/screens/Screens2.dart';  // Asegúrate de tener tu segunda pantalla importada.


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorMessage = ''; // Para mostrar los errores

  // Método para iniciar sesión
  void _signIn() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    // Aquí validamos las credenciales localmente
    if (email == 'kylo' && password == 'kyloren') {
      // Si las credenciales son correctas
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('¡Inicio de sesión exitoso!'),
          backgroundColor: Colors.green,
        ),
      );

      // Esperar un poco antes de redirigir para que el usuario vea el mensaje
      Future.delayed(Duration(seconds: 2), () {
        // Redirigir a la pantalla principal (Screens2) después del login exitoso
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Screens2()), // Redirigir a la pantalla principal
        );
      });
    } else {
      // Si las credenciales no son correctas
      setState(() {
        _errorMessage = 'Usuario o contraseña incorrectos';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A74DA),
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Campo de correo electrónico (usuario)
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Usuario',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            // Campo de contraseña
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            // Mostrar mensaje de error si ocurre alguno
            if (_errorMessage.isNotEmpty)
              Text(
                _errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            SizedBox(height: 18),
            // Botón de acceso
            ElevatedButton(
            onPressed: _signIn,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              backgroundColor: Color(0xFF0A74DA), 
            ),
            child: Text(
              'Acceder',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
)

          ],
        ),
      ),
    );
  }
}
