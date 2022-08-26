
class ActivitiesModel {

  String image,
      from,
      to,
      phoneNumber,
      coimage,
      coname,
      codetails,
      details,
      location,
      name ,
      price1 ,
      price2,
      image1,
      image2,
      image3,
      image4,
      image5 ;

  ActivitiesModel(this.image,
      this.coimage,
      this.coname,
      this.codetails,
      this.from,
      this.to,this.details,
  this.phoneNumber,
      this.image1,this.image2,this.image3, this.image4,this.image5,
      this.location, this.name,this.price1,this.price2);

  ActivitiesModel.fromJson(Map <dynamic, dynamic> map){
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
    price1 = map['price1'];
    price2 = map['price2'];
    coimage = map['coimage'];
    codetails = map['codetails'];
    coname = map['coname'];
    phoneNumber = map['phoneNumber'];
    from = map['from'];
    to = map['to'];
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
      'price1': price1,
      'price2': price2,
      'coimage': coimage,
      'codetails': codetails,
      'coname': coname,
      'phoneNumber': phoneNumber,
      'to': to,
      'from': from,
      'details': details,
    };
  }
}