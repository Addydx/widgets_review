import 'package:flutter/material.dart';

class ListViewUno extends StatelessWidget {
  const ListViewUno({super.key});

  // Lista de elementos (puedes cambiarla por lo que necesites)
  final List<String> items = const [
    'Elemento 1',
    'Elemento 2',
    'Elemento 3',
    'Elemento 4',
    'Elemento 5',
    'Elemento 6',
    'Elemento 7',
    'Elemento 8',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista Uno',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, index) {
          return ListTile(
            leading: const Icon(Icons.list), // Icono diferente para distinguir
            title: Text(items[index]),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              debugPrint('Seleccionaste: ${items[index]}');
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Botón de acción presionado');
        },
        child: const Icon(Icons.add, color: Colors.white, size: 30),
      ),
    );
  }
}