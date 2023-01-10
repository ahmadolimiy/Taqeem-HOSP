import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taq_pro/screen/home.dart';
import 'package:get/get.dart';
import 'package:taq_pro/screen/manager.dart';
import './screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bind.dart';
import 'controllers/conHome.dart';
import 'middleware/middle.dart';
 SharedPreferences? sharedPreferences ;
void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp() ;
 sharedPreferences= await SharedPreferences.getInstance() ;

  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      home: Home (),

      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=>Home(),binding:Bind(), ) ,
        GetPage(name: '/man', page: ()=>ManagerPage(),binding: Bind())
      ],

    );
  }
}
