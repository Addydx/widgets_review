import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjeta Completa'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Card(
          color: Colors.deepPurple[50],
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Ícono
                const Icon(Icons.favorite, color: Colors.pink, size: 50),

                const SizedBox(height: 10),

                // Texto centrado
                const Text(
                  'Tarjeta con Estilo',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                // Row con íconos
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(width: 10),
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(width: 10),
                    Icon(Icons.star, color: Colors.amber),
                  ],
                ),

                const SizedBox(height: 20),

                // Botón
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('¡Botón presionado!')),
                    );
                  },
                  icon: const Icon(Icons.touch_app),
                  label: const Text('Presionar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
