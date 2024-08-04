import 'package:flutter/material.dart';

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
        title:  Text(appBarTitle,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: child,
    );
  }
}
