

import 'package:flutter/material.dart';

class ListViewDos extends StatelessWidget {  // Cambiado de ListViewUno a ListViewDos
  const ListViewDos({super.key});

  // Lista de comidas movida aquí ya que es un StatelessWidget
  final List<String> comidas = const [
    'Mole',
    'Entomatadas',
    'Omelet',
    'Jugo verde',
    'Tacos',
    'Quesadillas',
    'Tamales',
    'Huevitos',
  ];

  @override
  Widget build(BuildContext context) {
    //final primary = Theme.of(context).iconButtonTheme.color;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de Comidas',  // Corregido el título
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: comidas.length,
        itemBuilder: (_, i) {
          return ListTile(
            leading: const Icon(Icons.fastfood),  // Icono más apropiado
            title: Text(comidas[i]),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              // Agrega funcionalidad al tap
              debugPrint('Seleccionaste: ${comidas[i]}');
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Agrega funcionalidad al FAB
          debugPrint('Botón presionado');
        },
        child: const Icon(Icons.add, color: Colors.white, size: 30),  // Icono más genérico
      ),
    );
  }
}