import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/managerController.dart';
import '../widget/bottonM.dart';
import '../widget/gridview.dart';


class ManagerPage extends StatelessWidget {
  const ManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text('Taqeem'),),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
SizedBox(height: 200,) ,
      ButtonM (text: 'Good') ,
      SizedBox(width: 30),
      GetBuilder<ManController>(
          builder: (controller)=>
           Text(controller.valuesofDept[0].goodvalue.toString(),style: TextStyle (fontSize: 70))) ,
  SizedBox(height: 50,),

      ButtonM (text: 'Pad') ,
      SizedBox(width: 30)
    ,
      GetBuilder <ManController>(
          builder:(controller)=>
           Text(controller.valuesofDept[0].padvalue.toString(),style: TextStyle (fontSize: 70),
           ),
          ) ,
                  Container(
                    child: GridViewWidget (),
                  ) ,
],


       ),

    );

  }

}
