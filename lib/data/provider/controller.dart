import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Controller with ChangeNotifier {
  File? fileImage;
  final storage = FirebaseStorage.instance;
 Future pickeImageFromGallery() async {
    var imagePiker = ImagePicker();

    final pickedXFile = await imagePiker.pickImage(source: ImageSource.gallery);
    if (pickedXFile != null) {
      fileImage = File(pickedXFile.path);
      notifyListeners();
      // return fileImage!;
    }
  }

 Future<String> storeImage(File file) async {
  print("object");
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    final stamp = DateTime.timestamp();
    UploadTask uploadTask =
        storage.ref().child("storeimage/$stamp").putFile(file, metadata);
          log("object");

    TaskSnapshot snapshot = await uploadTask;
    return await snapshot.ref.getDownloadURL();
  }
}
