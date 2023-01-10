


import 'package:marquee/marquee.dart';

import 'package:flutter/material.dart';

class WelCon extends StatelessWidget {
  const WelCon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      height: 100,

      child: Center(
          child: animated ()),
      decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color:Colors.white,width: 10),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                offset: Offset(5,5)

            )
          ]
      ),
    );
  }
}
class animated extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Marquee(
      text: 'اهلا بك في مستشفى ماركا التخصصي ',
      style: TextStyle(fontWeight: FontWeight.bold , fontSize:30),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 100.0,
      velocity: 100.0,
      pauseAfterRound: Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }


}
