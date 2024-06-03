import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:stockit/data/helper/login_preference.dart';
import 'package:stockit/data/helper/service.dart';
import 'package:stockit/data/model/store_model.dart';

class DbController with ChangeNotifier {
  final db = FirebaseFirestore.instance;
//----------------------------------CREATE
  Future addNewStore(StoreModel storeModel) async {
    db.collection("Store").doc(storeModel.storeId).set(storeModel.toJson());
  }

//-----------------------------------DELETE

  deleteAStore(id) async {
    db.collection('Store').doc(id).delete();
    // notifyListeners();
  }

//----------------------------------UPDATE

// updat()async{
//    db.collection('Store').doc(id).update({"name":"akbar"});
// }

//--------------------------------READ
  Future<bool> checkTheStoreAlredyExistorNot(id) async {
    final snapshot = await db.collection("Store").doc(id).get();

    if (snapshot.exists) {
      log("true");
      return true;
    } else {
      log("fslse");
      return false;
    }
  }

  List<StoreModel> existingStore = [];
  checkStoreForLogin(String storeType, String storeid, String password,
      dynamic page, context) async {
    final snapshot = await db.collection('Store').doc(storeid).get();
    if (snapshot.exists) {
      if (snapshot.data()!["storeType"] == storeType) {
        if (snapshot.data()!["password"] == password &&
            snapshot.data()!["storeId"] == storeid) {
              LoginPreference.setPreference(storeid);
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => page), (route) => false);
        } else {
          Services.errorMessage(context, "Id and Password does not match!");
        }
      } else {
        Services.errorMessage(context, "This user is not exist in this store");
      }
    } else {
      Services.errorMessage(context, "INVALID-CREDENTIAL");
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllStore(String storeType) {
    return db
        .collection("Store")
        .where('storeType', isEqualTo: storeType)
        .snapshots();
  }
}
