import 'package:flutter/material.dart';

class IngMobile extends StatelessWidget {
  const IngMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 400,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue,
            ),
            SizedBox(
              height: 300,
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.amber,
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
