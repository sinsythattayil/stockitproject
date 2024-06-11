import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:image_picker/image_picker.dart';
import 'package:stockit/data/model/labtest_model.dart';
import 'package:stockit/data/model/neethimedcinemodel.dart';
// import 'package:terra_treasures/model/user_model.dart';

class LabtestController {
  final db = FirebaseFirestore.instance;



  Future<void> create(String productname, String description, String mrp,String offer, String price) async {
    final collectionRef = FirebaseFirestore.instance.collection('labtesttype');
    await collectionRef.add({
      "productname": productname,
        "description": description,
        
        "mrp": mrp,
        "offer":offer,
        "price":price,
       
    });
    
  }

  List<LabtestModel> listOfData = [];

  // Future<List<LabtestModel>> fetchAllLabtest() async {
  //   final snapshot = await db.collection("labtesttype").get();
  //   listOfData = snapshot.docs.map((e) => LabtestModel.fromMap(e.data())).toList();
  //   print(listOfData);
  //   return listOfData;
  // }

  LabtestModel? singlelabtestData;

  Future<void> fetchSinglelabtestData(String id) async {
    final snapshot = await db.collection("labtesttype").doc(id).get();
    singlelabtestData = LabtestModel.fromMap(snapshot.data()!);
  }

//  Future<XFile?> pickImage() async {
//     final imagePicker = ImagePicker();
//     return await imagePicker.pickImage(
//       source: ImageSource.gallery,
//     ) ;
//   }

  // Future<String> uploadImage(XFile imageFile) async {
  //   final storageRef = FirebaseStorage.instance.ref().child('images/${imageFile.name}');
  //   try {
  //     final uploadTask = storageRef.putFile(File(imageFile.path));
  //     final snapshot = await uploadTask.whenComplete(() => null);
  //     return await snapshot.ref.getDownloadURL();
  //   } on FirebaseException catch (e) {
  //     print(e.message);
  //     return '';
  //   }
  // }
}