class UserModel {
  Location? location;
  String? sId;
  String? name;
  String? address;
  String? image;
  String? token;
  int? iV;

  UserModel(
      {this.location,
      this.sId,
      this.name,
      this.address,
      this.image,
      this.token,
      this.iV});

  UserModel.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
    sId = json['_id'];
    name = json['name'];
    address = json['address'];
    image = json['image'];
    token = json['token'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['_id'] = sId;
    data['name'] = name;
    data['address'] = address;
    data['image'] = image;
    data['token'] = token;
    data['__v'] = iV;
    return data;
  }
}

class Location {
  String? type;
  List<double>? coordinates;

  Location({this.type, this.coordinates});

  Location.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['coordinates'] = coordinates;
    return data;
  }
}
