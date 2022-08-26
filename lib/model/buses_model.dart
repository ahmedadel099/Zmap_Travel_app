class BusesModel {

  String image,
      location,
      name ,
      details,
      time,
      price,
      from,
      to,
      phoneNumber,
      image1,
      image2,
      image3,
      image4,
      image5,
      coimage,
      coname,
      codetails;

  BusesModel(this.image, this.location, this.name,
      this.details,this.phoneNumber,this.price,this.time,
      this.image1,
      this.image2,
      this.image3,
      this.image4,
      this.image5,
      this.coimage,
      this.coname,
      this.codetails,
      this.from,
      this.to,
      );

  BusesModel.fromJson(Map <dynamic, dynamic> map){
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
    coname = map['coname'];
    phoneNumber = map['phoneNumber'];
    price = map['price'];
    time = map['time'];
    location = map['location'];
    name = map['name'];
    details = map['details'];
    from = map['from'];
    to = map['to'];
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
      'phoneNumber': phoneNumber,
      'price': price,
      'time': time,
      'location': location,
      'name': name,
      'details': details,
      'to': to,
      'from': from,

    };
  }
}