import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taq_pro/controllers/conHome.dart';
import 'package:taq_pro/screen/home.dart';

import '../widget/mybuton.dart';


class Signin extends StatelessWidget {
   Signin({Key? key}) : super(key: key);
  late String email ;
  late String password ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child :Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                  minRadius: 100,backgroundColor: Colors.brown,
                  child: Image.asset('images/sad.png',height: 120,width: 120,)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
                child: GetBuilder<HomeController>(
                  builder: (controller)=>
                   TextField(
                    onChanged: (value){
                      controller.email=value;
                    },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: 'Enter Your Email',
                    ),
                  ),
                ),
              ) ,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
                child: GetBuilder<HomeController>(
                  builder: (controller)=>
                   TextField(
                    onChanged: (value){
                      controller.password=value ;
                    },

                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      hintText: 'Enter Your passWord',
                    ),
                  ),
                ),
              ),
               Mybuttom(
                  text: 'signin',
                   color: Colors.brown) ,
              Container(
                child: TextButton(
                    onPressed:  () {
                    Get.off(Home());
                    } ,
                    child: Icon (Icons.home)),
              ) ,


            ],
          ),



        ),






    );
  }
}
