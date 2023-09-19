//classe de dados (DTO)
import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  String? id;
  String? userName;
  String? email;
  String? password;
  String? phone;
  String? birth;
  String? social;
  Users(
      {this.id,
      this.userName,
      this.email,
      this.password,
      this.phone,
      this.birth,
      this.social});

  //método para converter dados do objeto em formato compatível com JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'email': email,
      'phone': phone,
      'password': password,
      'social': social,
      'birth': birth,
    };
  }

  //método para converter dados do objeto em formato compatível com JSON
  Users.fromJson(DocumentSnapshot doc) {
    id = doc.id;
    userName = doc.get('userName');
    email = doc.get('email');
    phone = doc.get('phone');
    social = doc.get('social');
    birth = doc.get('birth');
  }
}
