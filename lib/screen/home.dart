import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taq_pro/bind.dart';
import 'package:taq_pro/main.dart';
import 'package:taq_pro/screen/manager.dart';

import 'package:taq_pro/screen/sign.dart';
import '../controllers/conHome.dart';
import '../widget/sad.dart';
import '../widget/smile.dart';
import '../widget/welCon.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';


class Home extends StatelessWidget {

   Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _auth=FirebaseAuth.instance  ;

    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column (
        children: [
          SizedBox(height: 200,),
          WelCon() ,
          Container(
            child: Row(
              children: [
                SmileImage(),
                SadImage(),
              ],
            ),
          ) ,
          Row(
            children  :[
            Container(

              color: Colors.grey,
              child: TextButton (
                onPressed:  (){

                  if (sharedPreferences?.get('id')==1)
                    {


                      Get.to(ManagerPage() ,binding: Bind()) ;
                    }
                  else
                    Get.to(Signin());
                },
                child: Icon (Icons.man),
              ),
            )


            ]

          ),
        ],
      ),

    );
  }
}
