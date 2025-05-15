import 'package:flutter/material.dart';

class ContainerImages extends StatelessWidget {
  const ContainerImages({
    super.key, 
    required this.size, 
    required this.imageUrl,
    this.borderRadius = 15,
  });

  final Size size;
  final String imageUrl;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(
        'assets/images/$imageUrl',
        width: size.width,
        height: size.height * 0.3,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey[300],
            child: const Center(
              child: Icon(Icons.error, color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}