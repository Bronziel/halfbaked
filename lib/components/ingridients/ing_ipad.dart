import 'package:flutter/material.dart';
import 'package:halfbaked/components/equipment/equip_ipad.dart';

class IngIpad extends StatelessWidget {
  final Function(bool) right;
  const IngIpad({super.key, required this.right});

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () => right(false), 
                   icon: const Icon(Icons.chevron_left)),
                   const Text(
                     'Ingridients',
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 20,
                         fontWeight: FontWeight.bold),
                   ),
                    IconButton(onPressed: () => right(true), 
                   icon: const Icon(Icons.chevron_right)),
                ],
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

//try to combine ing and equp
//add chevron left right for ing and equip title card

class IngAndEquipIndexStackIpad extends StatefulWidget {
  const IngAndEquipIndexStackIpad({super.key});

  @override
  State<IngAndEquipIndexStackIpad> createState() => _IngAndEquipIndexStackIpadState();
}

class _IngAndEquipIndexStackIpadState extends State<IngAndEquipIndexStackIpad> {
  int newIndex = 0;
  updateIndex(bool update){
    print('current index $newIndex');
    setState(() {
      if(update){
        if(newIndex == 1){
          newIndex = 0;
          print('new index: $newIndex');
        }else{
          
           newIndex= newIndex + 1;
         
          
          print('new index should be 1, actual index: $newIndex');
        }
      }else{
        if(newIndex == 0){
          newIndex = 1;
        }else{
         newIndex= newIndex-1;
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: IndexedStack(
      index: newIndex,
      children:  [
        IngIpad(right: updateIndex,),EquipIpad(right: updateIndex,),
      ],),
    );
  }
}