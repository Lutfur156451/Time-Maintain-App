import 'package:flutter/material.dart';
class timeScreen extends StatelessWidget {


  final intime;
  final outtime;



  timeScreen(this.intime, this.outtime,);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Text("$intime"),
          Text("$outtime"),

        ],
      ),

    );
  }
}
