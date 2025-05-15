
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget{
  const CardImage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Image'),
      ),
      body: const Center(
        child: Text('Contenido de card image'),
      ),
    );
  }
}
