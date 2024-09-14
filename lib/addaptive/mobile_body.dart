import 'package:flutter/material.dart';

//dont use listview for iphone since single scrolll is what we are doing anywya.
//time card dont loook great
//sohudl you put prep and totla time in one tile abouve title?? feels like title should be at top.
//no tab bar insted floatig back button with ´
class MobileBody extends StatelessWidget {
  final String appBarTitle;
  final Widget child;
  const MobileBody({
    super.key,
    required this.child,
    this.appBarTitle = 'Mobile Body',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: child,
    );
  }
}
