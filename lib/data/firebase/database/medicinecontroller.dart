import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:image_picker/image_picker.dart';
import 'package:stockit/data/model/neethimedcinemodel.dart';
// import 'package:terra_treasures/model/user_model.dart';

class MedicineController {
  final db = FirebaseFirestore.instance;

  Future<void> addMedicine(Medicinemodel medicinemodel, String uid) async {
    final docRef = db.collection("medicineproduct").doc(uid);
    await docRef.set(medicinemodel.toMap());
    fetchAllMedicine();
  }

  Future<void> create(String productname, String description, String mrp,String offer, String price,String imageUrl) async {
    final collectionRef = FirebaseFirestore.instance.collection('medicineproduct');
    await collectionRef.add({
      "productname": productname,
        "description": description,
        
        "mrp": mrp,
        "offer":offer,
        "price":price,
        "imageUrl": imageUrl,
    });
    
  }

  List<Medicinemodel> listOfData = [];

  Future<List<Medicinemodel>> fetchAllMedicine() async {
    final snapshot = await db.collection("medicineproduct").get();
    listOfData = snapshot.docs.map((e) => Medicinemodel.fromMap(e.data())).toList();
    print(listOfData);
    return listOfData;
  }

  Medicinemodel? singleMedicineData;

  Future<void> fetchSingleMedicineData(String id) async {
    final snapshot = await db.collection("medicineproduct").doc(id).get();
    singleMedicineData = Medicinemodel.fromMap(snapshot.data()!);
  }

  Future<XFile?> pickImage() async {
    final imagePicker = ImagePicker();
    return await imagePicker.pickImage(
      source: ImageSource.gallery,
    );
  }

  Future<String> uploadImage(XFile imageFile) async {
    final storageRef = FirebaseStorage.instance.ref().child('images/${imageFile.name}');
    try {
      final uploadTask = storageRef.putFile(File(imageFile.path));
      final snapshot = await uploadTask.whenComplete(() => null);
      return await snapshot.ref.getDownloadURL();
    } on FirebaseException catch (e) {
      print(e.message);
      return '';
    }
  }
}