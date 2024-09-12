import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

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

  Future getImageFromCamera() async {
    final XFile? image = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 50,
        maxHeight: 500,
        maxWidth: 500);
    if (image == null) return null;
    CroppedFile? croppedfile = await ImageCropper().cropImage(
        sourcePath: image.path,
        aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 2),
        compressFormat: ImageCompressFormat.jpg);
    if (croppedfile == null) return null;

    setState(() {
      _image = XFile(croppedfile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick image'),
      ),
      body: Center(
        child: _image == null
            ? const Text('No image selected.')
            : Image.file(File(_image!.path)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImageFromCamera,
        tooltip: 'Pick Image',
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
