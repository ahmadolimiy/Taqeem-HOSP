import 'package:flutter/material.dart';



class ButtonM extends StatelessWidget {
final  String text ;
  const ButtonM( {Key? key ,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(

              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('$text       ',style: TextStyle (fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
