import 'package:flutter/material.dart';
class customBottom extends StatelessWidget {




  String text;

  final onAction;

  customBottom(this.text, this.onAction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 18,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
          ),
        ),
        onPressed:onAction,
        child: Text(text,style: TextStyle(fontSize: 15))

      ),
    );
  }
}
