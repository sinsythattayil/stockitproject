class MedicineModel {
  String? medId;
  String medName;
  String description;
  double price;
  double mrp;
  String offer;
  String imageUrl;

  MedicineModel(
      {required this.description,
      required this.imageUrl,
       this.medId,
      required this.medName,
      required this.mrp,
      required this.offer,
      required this.price});

  Map<String, dynamic> toJson(id) => {
        "medId":id   ,
        "medName": medName,
        "description": description,
        "price": price,
        "mrp": mrp,
        "offer": offer,
        "imageUrl": imageUrl
      };

  factory MedicineModel.fromJson(Map<String, dynamic> json) {
    return MedicineModel(
        description: json["description"],
        imageUrl: json["imageUrl"],
        medId: json["medId"],
        medName: json["medName"],
        mrp: json["mrp"],
        offer: json["offer"],
        price: json["price"]);
  }
}
