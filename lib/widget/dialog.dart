import 'package:flutter/material.dart';
class Dialogchanged
{

  static Future<void> showMyDialog5(BuildContext ctx , String title , String child1,String child2) async {
    return showDialog<void>(
      context: ctx,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          // contentTextStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),
          title:  Text('$title'),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          content: SingleChildScrollView(
            child: ListBody(
              children:  <Widget>[

                Text('$child1 '),
                Text('$child2'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('الرجوع'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}