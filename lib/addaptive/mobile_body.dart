import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  final Widget child;
  const MobileBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Body'),
      ),
      body: child,
    );
  }
}
