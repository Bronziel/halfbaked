import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  final Widget child;
  const DesktopBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop Body'),
      ),
      body: child,
    );
  }
}
