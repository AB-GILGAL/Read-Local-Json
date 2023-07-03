class ProductsModel {
  String? pName;
  String? pDescription;
  double pPrice;
  String? pImg;

  ProductsModel(
      {required this.pName,
      required this.pDescription,
      required this.pPrice,
      required this.pImg});

      factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        pName: json["name"],
        pDescription: json["description"],
        pPrice: json["price"],
        pImg: json["imageUrl"],
       
    );

    Map<String, dynamic> toJson() => {
        "name": pName,
        "description": pDescription,
        "price": pPrice,
        "imageUrl": pImg,
        
    };
}

