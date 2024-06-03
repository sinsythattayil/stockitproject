class StoreProductModel {
  String productId;
  String storeId;
  String productName;
  int qty;
  String price;
  String category;
  String imageUrl;
  StoreProductModel(
      {required this.category,
      required this.imageUrl,
      required this.price,
      required this.productId,
      required this.productName,
      required this.qty,
      required this.storeId});
  Map<String, dynamic> tojson() => {
        "productId": productId,
        "storeId": storeId,
        "productName": productName,
        "qty": qty,
        "price": price,
        "category": category,
        "imageUrl":imageUrl,
      };
factory StoreProductModel.fromJson(Map<String, dynamic> json) {
    return StoreProductModel(
      imageUrl:json["imageUrl"],
        category: json["category"],
        price: json["price"],
        productId: json["productId"],
        productName: json["productName"],
        qty: json["qty"],
        storeId: json["storeId"]);
  }
}
