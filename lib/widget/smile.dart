import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../controllers/conHome.dart';


class SmileImage extends StatelessWidget {


   SmileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder <HomeController>(
      init: HomeController(),
      builder: (controller)=>
       Expanded(child:
      TextButton(
          onPressed: () {
         controller.showdialog(' سنكون في خدمتك دائما الحمد لله على سلامتك') ;
         controller.addTaq('hosp','Satisfaction',true);
          },

          child: Image.asset('images/smile.svg.png')
      )
      ),
    );
  }
}
