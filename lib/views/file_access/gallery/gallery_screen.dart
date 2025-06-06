import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  File? _image;
  ImagePicker _picker=ImagePicker();
  Future<void> openGalley()async{
    XFile? _pickImage= await _picker.pickImage(source: ImageSource.gallery);
    if(_pickImage!=null){
      setState(() {

        _image=File(_pickImage!.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           _image!=null ? Image.file(_image!,height: 200,) : Text("no Selected Image"),
            ElevatedButton(onPressed: (){
openGalley();
            }, child: Text("gallery"))
          ],
        ),
      ),
    );
  }
}
