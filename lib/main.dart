import 'package:crudapp_eva/firebase_options.dart';
import 'package:flutter/material.dart';
import 'screens/Screens2.dart'; // Importamos Screens2 desde su carpeta
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(), // Pantalla inicial
    );
  }
}

// Pantalla de Bienvenida
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A74DA), // Celeste oscuro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo circular
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                    'assets/img/konecte.jpeg', // Ruta de la imagen
                    width: 100,  // Ajusta el tamaño según sea necesario
                    height: 100, // Ajusta el tamaño según sea necesario
                    fit: BoxFit.cover, // Para asegurarte de que la imagen se ajuste bien al círculo
                  ),
              ),
            ),
            SizedBox(height: 20),
            // Nombre "Konecte"
            Text(
              "Konecte",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            // Botón de inicio
            ElevatedButton(
              onPressed: () {
                // Navegar a Screens2
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screens2()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Color(0xFF0A74DA),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Iniciar",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

