import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar ({
  required BuildContext context,
  required String title,


}){

  return AppBar(
    centerTitle: true,
    leading: IconButton(onPressed: () {
      Navigator.pop(context);
    }, icon: Icon(Icons.arrow_left),),
    title: Text(title,
    style: TextStyle(
      fontWeight: FontWeight.w500,
    ),
    ),
  );
}