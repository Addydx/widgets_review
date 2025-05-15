import 'package:flutter/material.dart';
import 'package:widgets_review/routes/my_routes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Navegación básica del bottom nav
    if (index == 1) {
      Navigator.pushNamed(context, 'listviewuno');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => Navigator.pushNamed(context, 'alert'),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: MyRoutes.menuOptions.length,
        separatorBuilder: (context, index) => const Divider(height: 1, thickness: 1),
        itemBuilder: (context, index) {
          final option = MyRoutes.menuOptions[index];
          return ListTile(
            leading: Icon(option.icon),
            title: Text(option.menu),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.pushNamed(context, option.ruta),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista',
          ),
        ],
      ),
    );
  }
}