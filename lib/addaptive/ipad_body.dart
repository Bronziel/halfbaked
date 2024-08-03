import 'package:flutter/material.dart';

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
