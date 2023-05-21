import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cycle_resale_app/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhoneAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser(context) async{
    final QuerySnapshot result = await users.where('uid',isEqualTo: user?.uid).get();
    List <DocumentSnapshot> document = result.docs;
    if(document.length>0){
      Navigator.pushReplacementNamed(context, LoginScreen.id);

    }else{
      return users.doc(user?.uid)
          .set({
        'uid' : user?.uid,
        'email' : user?.email,
      })
          .then((value){
        Navigator.pushReplacementNamed(context, LoginScreen.id);

      })
          .catchError((error) => print("Failed to add user : $error"));

    }
  }
}