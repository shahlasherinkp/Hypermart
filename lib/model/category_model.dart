class CategoryModel {
  String? sId;
  String? name;
  String? icon;
  Product? product;
  int? iV;

  CategoryModel({this.sId, this.name, this.icon, this.product, this.iV});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    icon = json['icon'];
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['icon'] = icon;
    if (product != null) {
      data['product'] = product!.toJson();
    }
    data['__v'] = iV;
    return data;
  }
}

class Product {
  String? sId;
  String? pname;
  String? image;
  String? desc;
  List<String>? price;
  int? iV;

  Product({this.sId, this.pname, this.image, this.desc, this.price, this.iV});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    pname = json['pname'];
    image = json['image'];
    desc = json['desc'];
    price = json['price'].cast<String>();
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