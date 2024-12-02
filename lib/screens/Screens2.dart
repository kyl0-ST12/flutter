import 'package:flutter/material.dart';
import 'package:crudapp_eva/screens/Screens3.dart';  // Importamos Screen3
import 'package:crudapp_eva/screens/Screens4.dart';  // Importamos Screen4

class Screens2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF0A74DA),
        title: Text("Konecte"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Encabezado
            Text(
              "Hola, bienvenido a Konecte",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Encuentra tu hogar ideal con nuestra tecnología avanzada.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            // Lista de tarjetas
            Expanded(
              child: ListView(
                children: [
                  _buildInfoCard(
                    title: "Simplifica la búsqueda con IA",
                    description:
                        "Filtros automáticos basados en IA para mostrar propiedades relevantes.",
                    icon: Icons.search,
                    color: Colors.blue,
                  ),
                  _buildInfoCard(
                    title: "Mejora en la gestión de propiedades",
                    description:
                        "Herramientas para listar, analizar y optimizar la visibilidad de propiedades.",
                    icon: Icons.settings,
                    color: Colors.green,
                  ),
                  _buildInfoCard(
                    title: "Asesoría virtual en todo momento",
                    description:
                        "Chatbots inteligentes que ofrecen consejos para compradores y soporte para corredores.",
                    icon: Icons.chat,
                    color: Colors.purple,
                  ),
                  // Card convertida en un ElevatedButton
                  _buildInfoCard(
                    title: "¿Quiénes somos y que hacemos?",
                    description:
                        "Tu aliado en la búsqueda de viviendas ideales, conectando compradores y propietarios con tecnología innovadora.",
                    icon: Icons.info,
                    color: Colors.orange,
                    isButton: true, // Especificamos que esta es un botón
                    onPressed: () {
                      // Navegar a Screen3
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen3()),
                      );
                    },
                  ),
                ],
              ),
            ),
            // Botón Login al final
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  // Navegar a Screen4
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero, // Sin padding extra
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Botón pequeño
                  minimumSize: Size(0, 0), // Tamaño mínimo
                  foregroundColor: Color(0xFF0A74DA), // Color del texto
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 14, // Botón pequeño
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Método para construir tarjetas informativas
  Widget _buildInfoCard({
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    bool isButton = false, // Agregado para saber si la card es un botón
    VoidCallback? onPressed, // Acción cuando se presiona el botón
  }) {
    return isButton
        ? InkWell(
            onTap: onPressed,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: color, width: 2), // Bordes para hacerla más como un botón
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: color,
                    child: Icon(icon, color: Colors.white, size: 28),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : Container(
            margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.transparent, // Fondo transparente
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: color,
                  child: Icon(icon, color: Colors.white, size: 28),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}

