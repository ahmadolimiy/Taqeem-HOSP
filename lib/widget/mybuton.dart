import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taq_pro/controllers/conHome.dart';

import '../screen/manager.dart';




class Mybuttom extends StatelessWidget {
  Mybuttom ( { required this.text, required this.color}) ;
  final String text ;
  final Color color ;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
            elevation: 5,
            color: color,
            borderRadius: BorderRadius.circular(10),

            child:GetBuilder<HomeController>(
              builder: (controller)=>
               MaterialButton(
                onPressed: (){
                  controller.authUser() ;

                } ,
                child: Text(
                  '$text',
                  style: TextStyle (fontSize: 20,fontWeight: FontWeight.w900),),

              ),
            )
        ),
      ),
    );
  }
}
