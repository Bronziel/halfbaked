import 'package:flutter/material.dart';

class StepsIpad extends StatefulWidget {
  const StepsIpad({super.key});

  @override
  State<StepsIpad> createState() => _StepsIpadState();
}

class _StepsIpadState extends State<StepsIpad> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xffd9d9d9),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xff161414),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Steps:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView(
                  children: const [
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Prepp',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '1:',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 350,
                              child: Text(
                                softWrap: true,
                                'Börja med att skära upp salladshuvudet. För att sedan sätta det i en plast bunke',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
