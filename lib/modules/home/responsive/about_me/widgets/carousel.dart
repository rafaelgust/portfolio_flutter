import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final List<IconData> icons = [
    FontAwesomeIcons.java,
    FontAwesomeIcons.c,
    FontAwesomeIcons.code,
    FontAwesomeIcons.java,
    FontAwesomeIcons.java,
    FontAwesomeIcons.java,
    FontAwesomeIcons.java,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width - 50,
        height: 150,
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: CarouselSlider.builder(
          itemCount: icons.length,
          itemBuilder: (context, index, realIdx) {
            return Icon(icons[index], size: 50);
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.0 / icons.length,
          ),
        ),
      ),
    );
  }
}
