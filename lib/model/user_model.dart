//بسم الله الرحمن الرحيم

class UserModel {
  String userId , email , name , pic, phoneNumber, dateOfBirth, gender ;

 UserModel({
   this.userId,
   this.email,
   this.name,
   this.pic,
   this.phoneNumber,
   this.dateOfBirth,
   this.gender,
 });

 UserModel.fromJson(Map<dynamic,dynamic> map) {
   if(map==null){
     return ;
   }
   userId = map ['userId'];
   email = map ['email'];
   name = map ['name'];
   pic = map ['pic'];
   phoneNumber  = map ['phoneNumber'];
   dateOfBirth  = map ['dateOfBirth'];
   gender= map ['gender'];
 }
 toJson(){
   return {
     'userId' :userId,
     'email' :email,
     'name' :name,
     'pic' :pic,
     'phoneNumber' :phoneNumber ,
     'dateOfBirth' :dateOfBirth ,
     'gender' :gender ,
   };
 }
}