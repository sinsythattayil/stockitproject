import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stockit/data/helper/login_preference.dart';
import 'package:stockit/data/helper/service.dart';
import 'package:stockit/data/model/add_product_store.dart';
import 'package:stockit/data/model/booking_model.dart';
import 'package:stockit/data/model/feedback_model.dart';
import 'package:stockit/data/model/labtest_model.dart';
import 'package:stockit/data/model/medicine_model.dart';
import 'package:stockit/data/model/notificationFromNethioOrder.dart';
import 'package:stockit/data/model/notification_model.dart';
import 'package:stockit/data/model/order_model.dart';
import 'package:stockit/data/model/product_neethi_model.dart';
import 'package:stockit/data/model/store_model.dart';
import 'package:stockit/presentation/modules/user_module/neethi/notificationee.dart';

class DbController with ChangeNotifier {
 static List<String> labTest = [
    "Women",
    "Cancer Screening",
    "Fever",
    "Diabeties",
    "Joint Pain",
    "Full Body Checkup",
    "Kidney",
    "Liver",
    "Lungs",
    "Heart",
    "Thyroid",
    "Bones"
  ];

  String? storeId;
  StoreModel? storeModel;
  Future getCurrentStoreData(id) async {
    storeId = id;
    final snaphot = await db.collection("Store").doc(id).get();

    if (snaphot.exists) {
      storeModel = StoreModel.fromjson(snaphot.data()!);
    }
  }

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

//--------------------------------READ

//.......................Authentivcation.......................
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
          getCurrentStoreData(storeid).then((value) {
            LoginPreference.setPreference(storeid);
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => page),
                (route) => false);
          });
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

  Future<DocumentSnapshot> getSelectedStore(id) {
    return db.collection("Store").doc(id).get();
  }
  //---------------------------USER USER USER......................

  getRationProductDataForOrder(storeIds, selectedCategory) {
    return db
        .collection("Ration Products")
        .where("storeId", isEqualTo: storeIds)
        .where("category", isEqualTo: selectedCategory)
        .snapshots();
  }

  getRationSpeciaProductDataForOrder(storeIds, selectedCategory) {
    return db
        .collection("Ration Products")
        .where("storeId", isEqualTo: storeId)
        .where("category", isEqualTo: selectedCategory)
        .where("isItSpecial", isEqualTo: "Special")
        .snapshots();
  }

  getMaveliAndSupplycoSpecialProductForOrder(collection, storeId) {
    return db
        .collection(collection)
        .where("storeId", isEqualTo: storeId)
        .where("isItSpecial", isEqualTo: "Special")
        .snapshots();
  }

  getMaveliAndSupplycoAllProductForOrder(collection, storeId) {
    return db
        .collection(collection)
        .where("storeId", isEqualTo: storeId)
        .snapshots();
  }

  likeMyProduct(uid, storeID, StoreModel storeModel) async {
    final doc =
        db.collection("firebase").doc(uid).collection("Fav Store").doc(storeID);

    final snapshot = await doc.get();

    if (snapshot.exists) {
      doc.delete();
    } else {
      await doc.set(storeModel.toJson());
    }
  }

  Stream<DocumentSnapshot> checkProductisLikedORNot(
    uid,
    storeID,
  ) {
    return db
        .collection("firebase")
        .doc(uid)
        .collection("Fav Store")
        .doc(storeID)
        .snapshots();
  }

  Stream<QuerySnapshot> getMyFavStore(uid) {
    return db
        .collection("firebase")
        .doc(uid)
        .collection("Fav Store")
        .snapshots();
  }

  Future<DocumentSnapshot> getSelectedUserdata(uid) async {
    return db.collection("firebase").doc(uid).get();
  }

// getSpecilaRationProductDataForOrder(collectionPath,storeId,selectedCategory){

// return  db.collection("Ration Products").where("storeId",isEqualTo: storeId).where("category",isEqualTo: selectedCategory).snapshots();

// }

Stream<QuerySnapshot> getNeethiProductByCategory(selectedCategory){
  print(selectedCategory);
 return db.collection("Lab Test").where("category",isEqualTo: selectedCategory).snapshots();
}

//---------------Ration........................
  Future addProductToRationStore(StoreProductModel productModel) async {
    final docs = db.collection("Ration Products").doc();
    docs.set(productModel.tojson(docs.id));
  }

  //........
  Stream<QuerySnapshot> getRationProduct(card) {
    return db
        .collection("Ration Products")
        .where("storeId", isEqualTo: storeId)
        .where("category", isEqualTo: card)
        .snapshots();
  }

  getSpecialRationProducts() {
    return db
        .collection("Ration Products")
        .where("storeId", isEqualTo: storeId)
        .where("isItSpecial", isEqualTo: "Special")
        .snapshots();
  }

  // ..--------------------Maveli--------

  Future addProductToMaveliStore(StoreProductModel productModel) async {
    final docs = db.collection("Maveli Products").doc();
    docs.set(productModel.tojson(docs.id));
  }

  Stream<QuerySnapshot> getMaveliProduct() {
    return db
        .collection("Maveli Products")
        .where("storeId", isEqualTo: storeId)
        .snapshots();
  }

  getSpecialMaveliProducts() {
    return db
        .collection("Maveli Products")
        .where("storeId", isEqualTo: storeId)
        .where("isItSpecial", isEqualTo: "Special")
        .snapshots();
  }

  // ..--------------------Supplyco--------

  Future addProductToSupplycoStore(StoreProductModel productModel) async {
    final docs = db.collection("Supplyco Products").doc();
    docs.set(productModel.tojson(docs.id));
  }

  Stream<QuerySnapshot> getSupplycoProduct() {
    return db
        .collection("Supplyco Products")
        .where("storeId", isEqualTo: storeId)
        .snapshots();
  }

  getSpecialSupplycoProducts() {
    return db
        .collection("Supplyco Products")
        .where("storeId", isEqualTo: storeId)
        .where("isItSpecial", isEqualTo: "Special")
        .snapshots();
  }

  //----------------....................ORDER.............................----------------------------//

  Future addNewOrder(OrderModel orderModel) async {
    final doc = db.collection("Orders").doc();

    doc.set(orderModel.toJson(doc.id));
  }

  Stream<QuerySnapshot> getMyOrders() {
    return db
        .collection("Orders")
        .where("uid", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .snapshots();
  }

  Stream<QuerySnapshot> getOrderInStore(storid) {
// print(storeModel!.storeId);
    return db
        .collection("Orders")
        .where("storeId", isEqualTo: storid)
        .snapshots();
  }

  Stream<DocumentSnapshot> getSelectedOrderInStore(orderID) {
// print(storeModel!.storeId);
    return db.collection("Orders").doc(orderID).snapshots();
  }

  _deleteFromOrder(orderId, StoreProductModel storeProductModel) async {
    final snapshot = await db.collection("Orders").doc(orderId).get();
    if (snapshot.exists) {
      log("exist");
      OrderModel orderModel;
      orderModel = OrderModel.fromJosn(snapshot.data()!);

      List<StoreProductModel> list = [];
      list = orderModel.storeProductModel as List<StoreProductModel>;

      if (list.isEmpty) {
        log("1");
        db.collection("Orders").doc(orderId).delete();
      } else if (list.length > 1) {
        log("5");
        list.remove(storeProductModel);
        log("j");
        log(list.length.toString());
        db.collection("Orders").doc(orderId).update({
          "storeProductModel": list.map((e) => e.tojson(e.productId)).toList()
        });
      } else {
        log("3");
        db.collection("Orders").doc(orderId).delete();
      }
    }
  }

  sendNotificationToUser(
      uid, NotificationModel model, orderId, storeProductModel) {
    final doc =
        db.collection("firebase").doc(uid).collection("Notification").doc();
    doc.set(model.toJson(doc.id));
    _deleteFromOrder(orderId, storeProductModel);
  }

  Stream<QuerySnapshot> getCurrentUserNotification() {
    return db
        .collection("firebase")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("Notification")
        .snapshots();
  }

//=====================FEEDBACk

 Future  addToFeedBAck(FeedbackModel feedbackModel) async {
    final doc = db.collection("Feedback").doc();
    doc.set(feedbackModel.toJosn(doc.id));
  }
  //
  //===========================================NEETHI STORE


  addNewMedicine(MedicineModel medicineModel)async{
   final doc= db.collection("Medicine").doc();
   doc.set(medicineModel.toJson(doc.id));
  }

  Stream<QuerySnapshot>getAllMedicines(){
    return db.collection("Medicine").snapshots();
  }

    Future<void> addLabtest(LabtestModel labtestmodel,) async {
    final docRef = db.collection("Lab Test").doc();
    await docRef.set(labtestmodel.toMap(docRef.id));
    // fetchAllLabtest();
  }
Stream<QuerySnapshot> getAllLapTest(){
   return db.collection("Lab Test").snapshots();

  }

  addProduct(ProductNeethiModel productNeethiModel)async{
    final docRef = db.collection("Neethi Products").doc();
    await docRef.set(productNeethiModel.toJson(docRef.id));

  }

  Stream<QuerySnapshot> getAllNeethiProducts(){
   return db.collection("Neethi Products").snapshots();

  }


  //==========================================================
  //==========================================================
 Future bookOrder(BookingModel bookingModel)async{
  final doc=  db.collection("Booking").doc();
  doc.set(bookingModel.toJosn(doc.id));
  }


    Stream<QuerySnapshot>fetchMyCompletdOrderOfNethi(){
   return db.collection("Booking").where("uid",isEqualTo: FirebaseAuth.instance.currentUser!.uid).where("status",isEqualTo: "Completed").snapshots();

  }

  //=====Neeethi Order Notifiation


 Future sendNotificationToUserbookingStatusOFUser(toID,NotificationModelForNethiOrder model)async{
   final docs= db.collection("firebase").doc(toID).collection("Notification From Nethi").doc();

   docs.set(model.toJson(docs.id));
  }

   Stream<QuerySnapshot> fetchMyNethiNotifcaition(){
    return db.collection("firebase").doc(FirebaseAuth.instance.currentUser!.uid).collection("Notification From Nethi").snapshots();

  }


 Stream<QuerySnapshot>  getMedAndProdctOrderFornethiModule(){
   return db.collection("Booking").where("typeOfOrder",isNotEqualTo:"Lab Test" ).snapshots();

  }
  Stream<QuerySnapshot>  getLabTestFornethiModule(){
   return db.collection("Booking").where("typeOfOrder",isEqualTo:"Lab Test" ).snapshots();

  }

Future<DocumentSnapshot>  fetchSelectedItem(collection,id){
 return db.collection(collection).doc(id).get();

  }

  //----------------ploadPrescription

 Future  uploadPrescription(url)async{

  final data=db.collection("Prescription").doc();
  data.set({
"id":data.id,
    "uid":FirebaseAuth.instance.currentUser!.uid,
    "prescription":url
  });

  }

 Stream<QuerySnapshot> fetchAllPrescrion(){
    return db.collection("Prescription").snapshots();

  }

 Future deletePrescription(id)async{
    db.collection("Prescription").doc(id).delete();
  }


 Future  deleteSelectedProductByOrderConfirmation(collection,id)async{
    db.collection(collection).doc(id).delete();
  }
}
