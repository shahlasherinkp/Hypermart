class ProductModel {
  String? sId;
  String? pname;
  String? image;
  String? desc;
  int? price;
  int? iV;

  ProductModel(
      {this.sId, this.pname, this.image, this.desc, this.price, this.iV});

  ProductModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    pname = json['pname'];
    image = json['image'];
    desc = json['desc'];
    price = json['price'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['pname'] = pname;
    data['image'] = image;
    data['desc'] = desc;
    data['price'] = price;
    data['__v'] = iV;
    return data;
  }
}
