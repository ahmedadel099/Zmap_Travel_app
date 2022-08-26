
class TripsModel {
  String
      image,
      id,
      location,
      name,
      price,
      details,
      phoneNumber,
  from,
  to,
  hotelname,
  roomtype,
  activity,
  nights,
  bus,
  time,
      image1,
      image2,
      image3,
      image4,
      image5
  ;

  TripsModel(
      this.nights,
      this.to,
      this.bus,
      this.hotelname,
      this.roomtype,
      this.from,
      this.time,
      this.activity,

    this.image,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.image5,
    this.id,
    this.location,
    this.name,
    this.price,
    this.details,
    this.phoneNumber,
  );

  TripsModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }


    image = map['image'];
    image1 = map['image1'];
    image2 = map['image2'];
    image3 = map['image3'];
    image4 = map['image4'];
    image5 = map['image5'];
    phoneNumber = map['phoneNumber'];
    details = map['details'];
    price = map['price'];
    location = map['location'];
    name = map['name'];
    id = map['id'];
    from = map['from'];
    to = map['to'];
    bus = map['bus'];
    hotelname = map['hotelname'];
    roomtype = map['roomtype'];
    time = map['time'];
    activity = map['activity'];


  }

  toJson() {
    return {
      'image': image,
      'image3': image3,
      'image2': image2,
      'image1': image1,
      'image4': image4,
      'image5': image5,
      'phoneNumber': phoneNumber,
      'price': price,
      'location': location,
      'name': name,
      'details': details,
      'id': id,
      'from': from,
      'to': to,
      'activity': activity,
      'time': time,
      'nights': nights,
      'hotelname': hotelname,
      'roomtype': roomtype,
      'bus': bus,

    };
  }
}
