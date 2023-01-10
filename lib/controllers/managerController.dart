import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import '../DeptOpject.dart';

class ManController extends GetxController {
   int goodValue=0;
  int padValue =0;

  List<ListValue> valuesofDept=[
    ListValue(name :'hosp') ,
    ListValue(name :'rec') ,
    ListValue(name :'pharm') ,
    ListValue(name :'er') ,
    ListValue(name :'accountant') ,
    ListValue(name :'maindept') ,
    ListValue(name :'lap') ,
  ] ;
  final _cloud =FirebaseFirestore.instance ;
   DateTime date=DateTime.now();

   void getdata (String col)  async {
     final data = await _cloud.collection(col).get() ;
     var x=valuesofDept.where((element) => element.name==col) ;
     for (var collections in data.docs ) {
       if (collections['Satisfaction']) {
        x.first.goodvalue++ ;
       }
       else
       {
        x.first.padvalue++ ;
       }
     }
update() ;
   }
@override
  void onInit()   {
    // TODO: implement onInit

  getdata('hosp') ;
  getdata('rec') ;
  getdata('pharm') ;
  getdata('er') ;
  getdata('accountant');
  getdata('maindept');
  getdata('lap');
    super.onInit();
  }
String formatDate (Timestamp time ) {
      var datefromdatestame=DateTime.fromMicrosecondsSinceEpoch(time.seconds * 1000) ;
         return DateFormat('yyyy-MM-dd   hh:mm a').format(datefromdatestame) ;
}
   List<DeptOpject> deptname = [
     DeptOpject(name :'الاستقبال' , id: 'rec'),
     DeptOpject(name :'الصيدلية ', id:'pharm'),
     DeptOpject(name :'الطوارئ', id: 'er'),
     DeptOpject(name :'المحاسبة', id:  'accountant' ),
     DeptOpject(name :'التمريض', id:  'maindept' ),
     DeptOpject(name :'المختبر', id: 'lap' ),
   ] ;
}

class ListValue {
  late String name ;
  late int goodvalue=0 ;
  late int padvalue=0;
  ListValue ({required this.name}) ;
}

