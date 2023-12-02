import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<String> images = [
    'assets/images/flutter.png',
    'assets/images/java.png',
    'assets/images/csharp.png',
    'assets/images/rust.png',
    'assets/images/dart.png',
    'assets/images/js.png',
    'assets/images/mysql.png',
    'assets/images/postgresql.png',
    'assets/images/mongo.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 10,
        height: 80.0,
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIdx) {
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(images[index], fit: BoxFit.cover),
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.7 / images.length,
          ),
        ),
      ),
    );
  }
}
