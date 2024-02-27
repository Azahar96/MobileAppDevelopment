// ignore_for_file: prefer_const_constructors

import 'package:e_learning_app/utils/colors.dart';
import 'package:flutter/material.dart';

/**                    AMRA DIRECTLY AGEE EKTA CUSTOM BUTTON CREATE KOREO AMADER MAIN SCREEN E THEKE CALL
 *                 KORTE PARI
 */

class CustomButton extends StatelessWidget {
  /**ekhne custom button k call korar jonno constructor create korchhi, for different name */
  final String? title; // ? ta dile eta as a optional hisebe kaj korbe
  final double? width;
  final void Function()? onTap;

  final IconData? icon;
  final Color? backgroundColor;
  final double? borderRadius;

  const CustomButton({
    super.key,
    required this.title,
    this.width,
    this.onTap,
    this.icon,
    this.backgroundColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        //width: size.width * .5,

        /**Ekhne jodi kono specific size na bole dei then eta byDefault 90% size nebe */
        width: width ?? size.width * .9,
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          //er mane holo jodi kono bg colr thake then seta dekhao elese bg color jta define kora achhe setai dekhao
          color: backgroundColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(
              borderRadius ?? 20), //BorderRadius thakle seta otherwise 20
          boxShadow: [
            BoxShadow(
                color: AppColors.primaryColor.withOpacity(.3),
                blurRadius: 10,
                spreadRadius: 5,
                //If we want one side shadow then
                offset: Offset(5, 5))
          ],
        ),
        child: Center(
          child: icon == null
              ? Text(
                  /*'Get Started',*/ title!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              : Icon(icon, color: Colors.white,),
        ),
      ),
    );
  }
}
