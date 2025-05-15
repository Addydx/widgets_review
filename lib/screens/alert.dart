import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  Future<void> _showAlert(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false, // Bloquea que se cierre tocando fuera
      builder: (context) {
        return WillPopScope(
          onWillPop: () async {
            // Bloquea el botón de retroceso físico/gesto
            return false; 
          },
          child: AlertDialog(
            title: const Text('Alerta Obligatoria'),
            content: const Text('Debes presionar el botón para continuar. No puedes salir de otra forma.'),
            actions: [
              TextButton(
                onPressed: () {
                  // Aquí puedes agregar lógica adicional si necesitas
                  Navigator.pop(context); // Solo se cierra al presionar OK
                },
                child: const Text('Aceptar'),
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text('Cancelar'))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de Alertas'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlert(context),
          child: const Text('Mostrar Alerta Obligatoria'),
        ),
      ),
    );
  }
}