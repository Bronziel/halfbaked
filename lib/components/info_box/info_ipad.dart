import 'package:flutter/material.dart';

class IntroIpad extends StatelessWidget {
  const IntroIpad({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: SizedBox(
          height: double.infinity,
          child: Card(
            color:  Color(0xFF161414),
            child: Column(
              children: [
                TitleIpad(),
                DescriptionIpad(),
                TimecardCombinedIpad(),
                 TagIpad()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TagIpad extends StatelessWidget {
  const TagIpad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
     width: double.infinity,
     height: 100,
     child: Column(
       children: [
         Expanded(
           child: Row(
             children: [
               Expanded(
                 child: TagChickenIpad(),
               ),
               Expanded(
                 child: TagChickenIpad(),
               ),
             ],
           ),
         ),
         Expanded(
           child: Row(
             children: [
               Expanded(
                 child: TagChickenIpad(),
               ),
               Expanded(
                 child: TagChickenIpad(),
               ),
             ],
           ),
         )
       ],
     ),
                    );
  }
}

class TagChickenIpad extends StatelessWidget {
  const TagChickenIpad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
      child: Card(
        child: Center(
            child: Text(
          'Chicken',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24),
        )),
      ),
    );
  }
}

class DescriptionIpad extends StatelessWidget {
  const DescriptionIpad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
     child: Padding(
       padding: EdgeInsets.only(bottom: 15.0, left: 15, right: 15),
       child: Align(
         alignment: Alignment.topCenter,
         child: Text(
           'En god Kebabrulle som aldrig gör en besviken.',
           style: TextStyle(
             color: Colors.white,
             fontSize: 24,
           ),
         ),
       ),
     ),
                    );
  }
}

class TitleIpad extends StatelessWidget {
  const TitleIpad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
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
                    );
  }
}

class TimecardCombinedIpad extends StatelessWidget {
  const TimecardCombinedIpad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 60,
      child: Card(
        color: Color(0xffd9d9d9),
        child: Row(
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
                    Text(
                      'Prepp:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      child: Center(
                        child: Text(
                          '150min',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
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
                    Text(
                      'Total:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      child: Center(
                        child: Text(
                          '450min',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PortionSizeCardIpad extends StatelessWidget {
  const PortionSizeCardIpad({
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
                  'PortionSize:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '15',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PreppTimeCardIpad extends StatelessWidget {
  const PreppTimeCardIpad({
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
              Icon(Icons.schedule),
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

class TotalTimeCardIpad extends StatelessWidget {
  const TotalTimeCardIpad({
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
              Icon(Icons.schedule),
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
