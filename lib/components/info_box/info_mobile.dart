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
        height: 400,
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
               const Expanded(child:  SizedBox( 
                  child:  Padding(
                    padding:  EdgeInsets.only(bottom: 15.0,left: 15,right: 15),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text('En god Kebabrulle som aldrig gör en besviken.',style: TextStyle(color: Colors.white, fontSize: 24, ),
                      ),
                      ),
                  ),
                ),
              ),
              Container(

              ),
            ],
          ),
        ),
      ),
    );
  }
}