import 'package:flutter/material.dart';

class CarouselViewX extends StatefulWidget {
  const CarouselViewX({super.key});

  @override
  State<CarouselViewX> createState() => _CarouselViewXState();
}

class _CarouselViewXState extends State<CarouselViewX> {
  final PageController _pageController = PageController(initialPage: 2);
  int _currentPage = 0;
  
  // Lista de imágenes desde assets
  final List<String> imagePaths = [
    'assets/images/dandadan1.png',
    'assets/images/dandadan2.png',
    'assets/images/dandadan3.png',
    'assets/images/dandadan4.png',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrusel Simple'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Carrusel de imágenes
          SizedBox(
            height: 250,
            child: PageView.builder(
              controller: _pageController,
              itemCount: imagePaths.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          child: const Center(
                            child: Icon(Icons.error, color: Colors.red),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          
          // Indicadores de posición
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              imagePaths.length,
              (index) => Container(
                margin: const EdgeInsets.all(4),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index 
                      ? Colors.blue 
                      : Colors.grey,
                ),
              ),
            ),
          ),
          
          // Botones de navegación
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}