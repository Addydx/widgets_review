import 'package:flutter/material.dart';
import 'package:widgets_review/routes/my_routes.dart';
import 'package:widgets_review/theme/theme_app.dart';
import 'package:widgets_review/widgets/my_home_page.dart'; // Asegúrate de importar MyHomePage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets Review',
      theme: ThemeApp.primaryTheme,
      initialRoute: MyRoutes.initialRoute,
      routes: MyRoutes.routes, // Añade esta línea para usar tus rutas definidas
      // Opcional: puedes añadir esto para manejar rutas no definidas
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const MyHomePage(), // Página de fallback
      ),
    );
  }
}