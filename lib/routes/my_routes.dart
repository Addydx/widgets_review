import 'package:flutter/material.dart';
import 'package:widgets_review/screens/alert.dart';
import 'package:widgets_review/screens/card.dart';
import 'package:widgets_review/screens/card_image.dart';
import 'package:widgets_review/screens/list_view_uno.dart';
import 'package:widgets_review/screens/list_view_dos.dart';
import 'package:widgets_review/widgets/my_home_page.dart';
import 'package:widgets_review/screens/carousel_view.dart';
import 'package:widgets_review/screens/input_field.dart';

class MenuOption {
  final IconData icon;
  final String menu;
  final String ruta;
  final Widget screen;

  const MenuOption({
    required this.icon,
    required this.menu,
    required this.ruta,
    required this.screen,
  });
}

class MyRoutes {
  static const String initialRoute = 'home';

  static const List<MenuOption> menuOptions = [
    MenuOption(
      icon: Icons.home_outlined,
      menu: 'home page',
      ruta: 'home',
      screen: MyHomePage(),
    ),
    MenuOption(
      icon: Icons.list_alt,
      menu: 'list_view_uno',
      ruta: 'listviewuno',
      screen: ListViewUno(),
    ),
    MenuOption(
      icon: Icons.list_alt,
      menu: 'list_view_dos',
      ruta: 'listviewdos',
      screen: ListViewDos(),
    ),
    MenuOption(
      icon: Icons.list_rounded,
      menu: 'tarjeta',
      ruta: 'card',
      screen: CardScreen(),
    ),
    MenuOption(
      icon: Icons.add_alert_sharp,
      menu: 'Alerta',
      ruta: 'alert',
      screen: AlertScreen(),
    ),
    MenuOption(
      icon: Icons.list_rounded,
      menu: 'Card Image',
      ruta: 'cardImagen',
      screen: CardImage(),
    ),
    MenuOption(
      icon: Icons.view_carousel_outlined,
      menu: 'Go Carousel View',
      ruta: 'carousel',
      screen: CarouselViewX(),
    ),
    MenuOption(
      icon: Icons.input_sharp,
      menu: 'input fields',
      ruta: 'inputfield',
      screen: InputFieldScreen(),
    ),
  ];

  void mif(){

  }

  static Map<String, Widget Function(BuildContext)> get routes {
    final Map<String, Widget Function(BuildContext)> routes = {};
    
    for (final option in menuOptions) {
      routes[option.ruta] = (BuildContext context) => option.screen;
    }
    
    return routes;
  }
}

