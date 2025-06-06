import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _image;
  ImagePicker _picker=ImagePicker();
  Future<void> openCamera()async{
    XFile? pickImage=await _picker.pickImage(source: ImageSource.camera);
    if(pickImage!=null){
      setState(() {
        _image=File(pickImage.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
                backgroundImage:_image!=null ? FileImage (_image!) : AssetImage('')),
            ElevatedButton(onPressed: (){
              openCamera();
            }, child: Text("Camera"))
          ],
        )
      ),
    );
  }
}
