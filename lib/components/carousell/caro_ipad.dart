import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CaroIpad extends StatelessWidget {
  const CaroIpad({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: CarouselSlider(
        items: [
          CaroItemImageIpad(number: imagePathlistIpad[0].imagePath),
          CaroItemImageIpad(number: imagePathlistIpad[1].imagePath),
          CaroItemImageIpad(number: imagePathlistIpad[2].imagePath),
          CaroItemImageIpad(number: imagePathlistIpad[3].imagePath),
        ],
        options: CarouselOptions(height: double.infinity),
      ),
    );
  }
}

class CaroItemIpad extends StatelessWidget {
  final String number;
  const CaroItemIpad({
    required this.number,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Colors.amber,
        child: Center(
          child: Text(
            number,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class CaroItemImageIpad extends StatelessWidget {
  final String number;
  const CaroItemImageIpad({
    required this.number,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Colors.amber,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              number,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}

class ImagePathIpad {
  final String imagePath;
  const ImagePathIpad({
    required this.imagePath,
  });
}

List<ImagePathIpad> imagePathlistIpad = [
  const ImagePathIpad(imagePath: 'assets/kebab1.jpeg'),
  const ImagePathIpad(imagePath: 'assets/kebab3.jpg'),
  const ImagePathIpad(imagePath: 'assets/kebabrulle.jpg'),
  const ImagePathIpad(imagePath: 'assets/plants.jpg'),
];
