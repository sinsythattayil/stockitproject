import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stockit/data/model/add_product_store.dart';

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

 Future<String> storeImage(File file,String path) async {
  print("object");
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    final stamp = DateTime.timestamp();
    UploadTask uploadTask =
        storage.ref().child("$path/$stamp").putFile(file, metadata);
          log("object");

    TaskSnapshot snapshot = await uploadTask;
    return await snapshot.ref.getDownloadURL();
  }

String radioValue="Genaral";
  chanegeRadioButtonvalues(value){
    radioValue=value;
    notifyListeners();

  }

   List<StoreProductModel> choosedList = [];

  Future addToList(StoreProductModel item) async{
    if (choosedList.isEmpty) {
      choosedList.add(item);
    } else {
      if (choosedList.contains(item)) {
        choosedList.remove(item);
      } else {
        choosedList.add(item);
      }
    }

    log(choosedList.length.toString());
    // setState(() {
      
    // });
    notifyListeners();
  }
clearList(){
  choosedList.clear();
  // notifyListeners();
}


String selectedItem="Male";

chanageItem(value){
  selectedItem=value;
  notifyListeners();
}

}
