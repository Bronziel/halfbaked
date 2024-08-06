import 'package:flutter/material.dart';
import 'package:halfbaked/components/equipment/equip_ipad.dart';
import 'package:halfbaked/components/equipment/equip_mobile.dart';

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
              //ing should be multiple with portion size
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


class IngAndEquipIndexStackMobile extends StatefulWidget {
  const IngAndEquipIndexStackMobile({super.key});

  @override
  State<IngAndEquipIndexStackMobile> createState() => _IngAndEquipIndexStackIpadState();
}

class _IngAndEquipIndexStackIpadState extends State<IngAndEquipIndexStackMobile> {
  int newIndex = 0;
  final controller = PageController(
    initialPage: 0 
  );

  updateIndex(bool update){
    setState(() {
      if(update){
        if(newIndex == 1){
          newIndex = 0;
          controller.jumpToPage(newIndex);
        }else{
           newIndex= newIndex + 1;  
           controller.jumpToPage(newIndex);
        }
      }else{
        if(newIndex == 0){
          newIndex = 1;
          controller.jumpToPage(newIndex);
        }else{
         newIndex= newIndex-1;
         controller.jumpToPage(newIndex);
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              index = newIndex;
            });
          },
          children: [
          IngMobile(/*right: updateIndex*/),
          EquipMobile(/*right: updateIndex*/)

        ],)
      ),
    );
  }
}

//IndexedStack(
   /*   index: newIndex,
      children:  [
        GestureDetector(
          onHorizontalDragStart: (left) => updateIndex(true),
          
          child: IngIpad(right: updateIndex,),),
        EquipIpad(right: updateIndex,),
      ],),*/