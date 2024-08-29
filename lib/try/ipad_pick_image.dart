import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class IpadPickImage extends StatefulWidget {
  const IpadPickImage({super.key});

  @override
  State<IpadPickImage> createState() => _IpadPickImageState();
}

class _IpadPickImageState extends State<IpadPickImage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick image'),),
      body: Container(
      ),
    );
  }
}