import 'package:cloud_firestore/cloud_firestore.dart';

class Users{
  final String uid;
  Users({this.uid});
  final CollectionReference users = Firestore.instance.collection('users');
  
  Future updateUserData(String name , String admissionNo , String mobNo, String email) async{

    return await users.document(uid).setData({
      'name' : name,
      'admissionNo' : admissionNo,
      'mobNo' : mobNo,
      'email' : email,
    });
  }

}