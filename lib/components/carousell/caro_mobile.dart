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
        items:  [
          CaroItemImageMobile(number: imagePathlist[0].imagePath),
          CaroItemImageMobile(number: imagePathlist[1].imagePath),
          CaroItemImageMobile(number: imagePathlist[2].imagePath),
          CaroItemImageMobile(number: imagePathlist[3].imagePath),
        ],
        options: CarouselOptions(height: double.infinity),
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

class CaroItemImageMobile extends StatelessWidget {
  final String number;
   const CaroItemImageMobile({
    required this.number,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Colors.amber,

        child: ClipRRect( borderRadius: BorderRadius.circular(15),child: Image.asset(number,fit: BoxFit.cover,)),
      ),
    );
  }
}

class ImagePath {
  final String imagePath;
  const ImagePath({required this.imagePath,});
}

List<ImagePath> imagePathlist = [
  const ImagePath(imagePath: 'assets/kebab1.jpeg'),
  const ImagePath(imagePath: 'assets/kebab3.jpg'),
  const ImagePath(imagePath: 'assets/kebabrulle.jpg'),
  const ImagePath(imagePath: 'assets/plants.jpg'),
];