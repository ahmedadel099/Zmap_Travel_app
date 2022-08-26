
class PlacesModel {

  String image, location, name , details, image1,image2,image3,image4,image5 ;

  PlacesModel(this.image,this.image1,this.image2,this.image3, this.image4,this.image5,
      this.location, this.name,this.details);

  PlacesModel.fromJson(Map <dynamic, dynamic> map){
    if (map == null) {
      return;
    }

    image = map['image'];
    image1 = map['image1'];
    image2 = map['image2'];
    image3 = map['image3'];
    image4 = map['image4'];
    image5 = map['image5'];
    location = map['location'];
    name = map['name'];
    details = map['details'];
  }

  toJson() {
    return {
      'image': image,
      'image1': image1,
      'image2': image2,
      'image3': image3,
      'image4': image4,
      'image5': image5,
      'location': location,
      'name': name,
      'details': details,
    };
  }
}