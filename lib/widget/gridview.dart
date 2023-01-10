import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taq_pro/controllers/conHome.dart';
import 'package:taq_pro/controllers/managerController.dart';




class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 500,
      child: GetBuilder <ManController>(
        builder: (controller)=>
            GridView.builder(
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: controller.deptname.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.amber,
                  child: Column(
                      children: [
                        Text(controller.deptname[index].name,
                          style:TextStyle (fontSize: 30,fontWeight:FontWeight.w800) ,),
                        Text(controller.valuesofDept[index+1].padvalue.toString(),
                            style:TextStyle (fontSize: 30,fontWeight:FontWeight.w800))
                      ],
                  ),
                );
              }

        ),
      ),
    );
  }
}