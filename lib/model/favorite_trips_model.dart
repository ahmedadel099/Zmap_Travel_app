class FavoriteTripsModel {
  String image, location, name, price, details;

  FavoriteTripsModel({this.image, this.location, this.name, this.price, this.details});

  FavoriteTripsModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }

    image = map['image'];
    details = map['details'];
    price = map['price'];
    location = map['location'];
    name = map['name'];
  }

  toJson() {
    return {
      'image': image,
      'price': price,
      'location': location,
      'name': name,
      'details': details,
    };
  }
}
