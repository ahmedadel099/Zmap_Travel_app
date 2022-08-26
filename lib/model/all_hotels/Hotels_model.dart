class HotelsModel {

  String image,
      location,
      name,
      details,
      price,
      singleprice,
      doubleprice,
      tripleprice,
      phoneNumber,
      image1,
      image2,
      image3,
      image4,
      image5,
      coimage,
      coname,
      codetails;


  HotelsModel(
      this.image,
      this.location,
      this.name,
      this.details,
      this.price,
      this.singleprice,
      this.doubleprice,
      this.tripleprice,
      this.phoneNumber,
      this.image1,
      this.image2,
      this.image3,
      this.image4,
      this.image5,
      this.coimage,
      this.coname,
      this.codetails,
      );

  HotelsModel.fromJson(Map <dynamic, dynamic> map){
    if (map == null) {
      return;
    }
    image = map['image'];
    image1 = map['image1'];
    image2 = map['image2'];
    image3 = map['image3'];
    image4 = map['image4'];
    image5 = map['image5'];
    coimage = map['coimage'];
    codetails = map['codetails'];
    price = map['price'];
    location = map['location'];
    name = map['name'];
    details = map['details'];
    singleprice = map['singleprice'];
    doubleprice = map['doubleprice'];
    tripleprice = map['tripleprice'];
    phoneNumber = map['phoneNumber'];
    coname = map['coname'];
  }

  toJson() {
    return {
      'image': image,
      'image1': image1,
      'image2': image2,
      'image3': image3,
      'image4': image4,
      'image5': image5,
      'coimage': coimage,
      'codetails': codetails,
      'coname': coname,
      'price': price,
      'singleprice': singleprice,
      'doubleprice': doubleprice,
      'tripleprice': tripleprice,
      'location': location,
      'name': name,
      'details': details,
      'phoneNumber': phoneNumber,
    };
  }
}