import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taq_pro/bind.dart';
import 'package:taq_pro/controllers/managerController.dart';
import 'package:taq_pro/main.dart';
import '../DeptOpject.dart';
import '../screen/home.dart';
import '../screen/manager.dart';
import '../widget/dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeController extends GetxController{
  final _cloud =FirebaseFirestore.instance ;
  final _dateTime=DateTime.now() ;

  late String email  ;
  late String password ;
  final _auth= FirebaseAuth.instance ;

    showdialog( String note){
      Get.defaultDialog(
          title: "اهلا بك في مستشفى ماركا التخصصي ",
          middleText: "$note" ,
          backgroundColor: Colors.teal,
          titleStyle: TextStyle(color: Colors.white),
          middleTextStyle: TextStyle(color: Colors.white),
          radius: 30
      );
      update() ;
    }
    addTaq ( String name_coloection , String name_field , bool Taqeem) async{
      final addData =  await _cloud.collection('$name_coloection').add({'$name_field':Taqeem,'date':_dateTime}) ;
      update() ;
    }
authUser  ( ) async{


  final user= await  _auth.signInWithEmailAndPassword(email: email, password: password) ;
    try {
      if (user != null) {
        Get.to(ManagerPage(), binding: Bind()) ;
          sharedPreferences?.setInt('id',1) ;
        update() ;
      }
      
    }catch (e){
      print(e) ;
    }
  }
  List<DeptOpject> dept = [
    DeptOpject(name :'الاستقبال' , id: 'rec'),
    DeptOpject(name :'الصيدلية ', id:'pharm'),
    DeptOpject(name :'الطوارئ', id: 'er'),
    DeptOpject(name :'المحاسبة', id:  'accountant' ),
    DeptOpject(name :'التمريض', id:  'maindept' ),
    DeptOpject(name :'المختبر', id: 'lap' ),

  ] ;

updatecheckbox (int i) {
  dept[i].ischeced=!dept[i].ischeced ;
  update() ;
}

     addTaqDept(int id) async{

}

clearList () {
  for (int i=0 ; i < dept.length; i++){
    dept[i].ischeced=false ;
  }
}

}



