import 'package:flutter/material.dart';
//add to weekly food plane
//start cooking recipes
//script for best possible start
//foods that cna just stand on hot plate without drying
//cooking page so when you start you get a cooking home page whjere u can add disihes
//plan a dinner  then press start cooking and jsut start cooking

class IpadBody extends StatelessWidget {
  final Widget child;
  const IpadBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ipad Body'),
      ),
      body: child,
    );
  }
}
