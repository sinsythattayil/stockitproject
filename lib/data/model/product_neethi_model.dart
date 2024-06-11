class ProductNeethiModel {
  String? prodictid;
  String imageUrl;
  String description;
  String mrp;
  String offer;
  String price;
  String prodName;

  ProductNeethiModel(
      {required this.description,
      required this.imageUrl,
      required this.mrp,
      required this.prodName,
      required this.offer,
      required this.price,
       this.prodictid});

  Map<String, dynamic> toJson(id) => {
    "prodName":prodName,
        "prodictid": id,
        "imageUrl": imageUrl,
        "description": description,
        "mrp": mrp,
        "offer": offer,
        "price": price
      };

  factory ProductNeethiModel.fromJson(Map<String, dynamic> json) {
    return ProductNeethiModel(
      prodName:json["prodName"],
        description: json["description"],
        imageUrl: json["imageUrl"],
        mrp: json["mrp"],
        offer: json["offer"],
        price: json["price"],
        prodictid: json["prodictid"]);
  }
}
