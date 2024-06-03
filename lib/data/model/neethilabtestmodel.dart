class Labtestmodel {
  String productname;
  String description;
  String mrp;
  String offer;
  String price;
  String? id;

  Labtestmodel({
    required this.productname,
    required this.description,
    required this.mrp,
    required this.offer,
    required this.price,
    
    this.id,
  });


  Map<String, dynamic> toMap() => {
        "productname": productname,
        "description": description,
        "id": id,
        "mrp": mrp,
        "offer":offer,
        "price":price,
        
      };

  factory Labtestmodel.fromMap(Map<String, dynamic> data) {
    return Labtestmodel(
      productname: data["productname"],
      description: data["description"],
      mrp: data["mrp"],
      offer: data["offer"],
      price: data["price"],
     
      id: data["id"],
    );
  }
}