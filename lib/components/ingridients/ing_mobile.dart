import 'package:flutter/material.dart';

class IngMobile extends StatelessWidget {
  const IngMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))),
              width: double.infinity,
              height: 50,
              child: const Center(
                child: Text(
                  'Ingridients',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              //add math for container+ list items *amount = heigh
              //not for listview since it is only list item*amount height
              height: 150,
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: const Color(0xff161414),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'KebabKött: 500g',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: const Color(0xff161414),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'KebabKött: 500g',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0xff161414),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5))),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'KebabKött: 500g',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
