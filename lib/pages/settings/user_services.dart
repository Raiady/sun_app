import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserServices{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  signUp(String userEmail, String password){
    try{
    _auth.createUserWithEmailAndPassword(
      email: userEmail,
       password: password,
    );
    return true;
    }on FirebaseAuthException catch(e){
      if(e.code == 'user-bot-found'){
        debugPrint("usuario não existe");
      }else if (e.code == 'wrong-password'){
        debugPrint("a senha informada esta incorreta");
      }
      return false;
    }catch(f){
      debugPrint(f.toString());
      return false;
    }
  }
}