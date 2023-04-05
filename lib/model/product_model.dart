class ProductModel {
  String? sId;
  String? pname;
  String? image;
  String? desc;
  List<Price>? price;
  int? iV;

  ProductModel(
      {this.sId, this.pname, this.image, this.desc, this.price, this.iV});

  ProductModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    pname = json['pname'];
    image = json['image'];
    desc = json['desc'];
    if (json['price'] != null) {
      price = <Price>[];
      json['price'].forEach((v) {
        price!.add(Price.fromJson(v));
      });
    }
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['pname'] = pname;
    data['image'] = image;
    data['desc'] = desc;
    if (price != null) {
      data['price'] = price!.map((v) => v.toJson()).toList();
    }
    data['__v'] = iV;
    return data;
  }
}

class Price {
  String? sId;
  String? color;
  String? size;
  String? model;
  int? value;
  int? iV;

  Price({this.sId, this.color, this.size, this.model, this.value, this.iV});

  Price.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    color = json['color'];
    size = json['size'];
    model = json['model'];
    value = json['value'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['color'] = color;
    data['size'] = size;
    data['model'] = model;
    data['value'] = value;
    data['__v'] = iV;
    return data;
  }
}
