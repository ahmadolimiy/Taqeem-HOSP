import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taq_pro/controllers/conHome.dart';


class LsitV extends StatelessWidget {
  const LsitV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controlle)=>
       ListView.builder(
           itemExtent: 60.0,
           itemCount:controlle.dept.length ,
          itemBuilder: ( context , i) {
          return  ListTile(
            leading: Text(controlle.dept[i].name,
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
            trailing: Checkbox (
              value: controlle.dept[i].ischeced,
              onChanged: (value){
                controlle.updatecheckbox(i);
                if (value!){
                  //will throw false becase the orginal value is false
                  controlle.addTaq(controlle.dept[i].id,'Satisfaction',false)  ;
                }else{
// should be here role for delete the record if the coustomer clear check box

                }
              },
            ),


          );
          } ),
    ) ;
  }
}
