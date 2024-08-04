import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CaroMobile extends StatelessWidget {
  const CaroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: CarouselSlider(
        items: const [
          CaroItemMobile(
            number: '1',
          ),
          CaroItemMobile(
            number: '2',
          ),
          CaroItemMobile(
            number: '3',
          )
        ],
        options: CarouselOptions(),
      ),
    );
  }
}

class CaroItemMobile extends StatelessWidget {
  final String number;
  const CaroItemMobile({
    required this.number,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
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
