import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class IpadPickImage extends StatefulWidget {
  const IpadPickImage({super.key});

  @override
  State<IpadPickImage> createState() => _IpadPickImageState();
}

class _IpadPickImageState extends State<IpadPickImage> {
   final ImagePicker _picker = ImagePicker();
      XFile? _image;
    
    Future getImage() async {
        final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    
        setState(() {
          _image = image;
        });
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick image'),),
      body: Center(
            child: _image == null
                ? const Text('No image selected.')
                : Image.file(File(_image!.path)),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: getImage,
            tooltip: 'Pick Image',
            child: const Icon(Icons.add_a_photo),
          ),
        );
      
    
  }
}