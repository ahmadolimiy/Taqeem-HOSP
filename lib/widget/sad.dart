import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taq_pro/controllers/conHome.dart';

import 'listv.dart';

class SadImage extends StatelessWidget {
   SadImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GetBuilder<HomeController>(
          builder: (controller)=>
           TextButton(
              onPressed: (){

                controller.showdialog('نأسف لذك يرجى إختيار القسم الذي لم يقدم الخدمة بالشكل المناسب  ') ;
                controller.addTaq('hosp','Satisfaction',false);
               controller.clearList();
                Get.bottomSheet(

                      SingleChildScrollView(
                        child: Container(
                          height: 500,
                           color: Colors.white,
                          child: Column (
                            children: [
                              Container(
                                child:  LsitV(),
                                height: 400,
                              ) ,
                              // Container(
                              //   child:Row  (
                              //     children: [
                              //       TextField(
                              //         decoration: new InputDecoration.collapsed(
                              //             hintText: 'ادخل رقم الهاتف'
                              //         ),
                              //         onChanged: (value){
                              //
                              //         },
                              //
                              //       ) ,
                              //       Text('hhh'),
                              //     ],
                              //   )
                              // )

                            ],
                          )
                        ),
                      ),

                ) ;
              },

              child: Image.asset('images/sad.png')),
        )
    );
  }
}

// Container(
// child: Row (
// children: [
// Container(
// child: TextField (
// onChanged: (value){
//
// },
// )
// ,) ,
// Container(
// child: TextButton (
// child: Text ('تمام'),
// onPressed: (){
//
// }
// ,),
// ) ,
// ],
// ),
// ) ,
// ],
// ),


// LsitV(),
//
// height: 500,
// color: Colors.white,
