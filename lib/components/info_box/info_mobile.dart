import 'package:flutter/material.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          color: const Color(0xFF161414),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Color(0xffd9d9d9),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.schedule),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Prepp:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  child: Center(
                                    child: Text(
                                      '150min',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.grey,
                    ),

                    //second half
                    Expanded(
                      child: SizedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.schedule),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Total:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  child: Center(
                                    child: Text(
                                      '450min',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 1, left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Kebabrulle:',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'En god Kebabrulle som aldrig gör en besviken.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 100,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: Card(
                                child: Center(
                                    child: Text(
                                  'Chicken',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: Card(
                                child: Center(
                                    child: Text(
                                  'Chicken',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: Card(
                                child: Center(
                                    child: Text(
                                  'Chicken',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: Card(
                                child: Center(
                                    child: Text(
                                  'Chicken',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PortionSizeCardMobile extends StatelessWidget {
  const PortionSizeCardMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5),
      child: SizedBox(
        width: double.infinity,
        height: 58,
        child: Card(
          color: const Color(0xffd9d9d9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.remove)),
                ),
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '15',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PreppTimeCard extends StatelessWidget {
  const PreppTimeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 5.0, right: 5),
      child: SizedBox(
        width: double.infinity,
        height: 58,
        child: Card(
          color: Color(0xffd9d9d9),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Prep Time:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '300min',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TotalTimeCard extends StatelessWidget {
  const TotalTimeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 5.0, right: 5, bottom: 8),
      child: SizedBox(
        width: double.infinity,
        height: 58,
        child: Card(
          color: Color(0xffd9d9d9),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Total Time:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '450min',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
