import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF0A74DA),
        title: Text("Información sobre Konecte"),
      ),
      body: SingleChildScrollView(  // Hacemos que el cuerpo sea desplazable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título general
            Text(
              "Nuestro Producto o Servicio",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            
            // Sección para Usuarios
            Text(
              "Para Usuarios:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A74DA),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "• Plataforma web y móvil para buscar propiedades según preferencias personalizadas.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            Text(
              "• Sistema de notificaciones y alertas sobre propiedades nuevas.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
            
            // Sección para Corredores
            Text(
              "Para Corredores:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A74DA),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "• Herramientas para gestionar múltiples listados en una sola plataforma.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            Text(
              "• Análisis de rendimiento de propiedades para ajustar estrategias de marketing.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 40),

            // Información adicional de Konecte
            Text(
              "Información Adicional de Konecte",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0A74DA),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Konecte es una plataforma innovadora diseñada para conectar compradores, propietarios y corredores de propiedades, ofreciendo soluciones avanzadas para encontrar el hogar ideal o gestionar propiedades de manera eficiente.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
