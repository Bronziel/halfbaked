import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        
        child: Card(
          color:const Color(0xFF161414) ,
          child: Column(
            children: [
              const SizedBox( 
                  child:  Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 1,left: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Kebabrulle:',style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold ),
                      ),
                      ),
                  ),
                ),
               const SizedBox( 
                  child:  Padding(
                    padding:  EdgeInsets.only(bottom: 15.0,left: 15,right: 15),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text('En god Kebabrulle som aldrig gör en besviken.',style: TextStyle(color: Colors.white, fontSize: 24, ),
                      ),
                      ),
                  ),
                ),
              Container(
                child: const Column(children: [
                  PortionSizeCard(),
                   PreppTimeCard(),
                   TotalTimeCard()
         
                  
                ],),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PortionSizeCard extends StatelessWidget {
  const PortionSizeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 5.0, right: 5),
      child: SizedBox(
       width: double.infinity,
       height: 58,
       child: Card(color: Color(0xffd9d9d9),child: Row(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('PortionSize:',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        ),
        Text('15', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
       ],),),
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
       child: Card(color: Color(0xffd9d9d9),child: Row(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Prep Time:',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        ),
        Text('300min', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
       ],),),
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
      padding: EdgeInsets.only(left: 5.0, right: 5,bottom: 8),
      child: SizedBox(
       width: double.infinity,
       height: 58,
       child: Card(color: Color(0xffd9d9d9),child: Row(children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text('Total Time:',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        ),
        Text('450min', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
       ],),),
                        ),
    );
  }
}