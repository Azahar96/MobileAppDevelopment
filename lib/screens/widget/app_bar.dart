import 'dart:ui';

import 'package:e_learning_app/utils/colors.dart';
import 'package:flutter/material.dart';

Widget homeAppBar(Size size) {
  return Container(
    padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
    height: size.height * .3,
    width: size.width,
    decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.secondaryColor,
            AppColors.primaryColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment
          .spaceAround, //it is spacing between all widgets inside my App Bar
      children: [
        //Ei Row ta 2 Text r Icon er
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TEXT 1
                Text(
                  'Hello,',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),

                //TEXT 2
                Text(
                  'Good Morning,',
                  style: TextStyle(
                      color: Colors.white.withOpacity(.7),
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),

            //NOTIFICATION ICON
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
                shape: BoxShape.circle,
              ),

              //Icon er opore ekta dot neaor jonno ekta Stack nilam tar under e ekta children and then
              // r ekta container
              child: Stack(
                alignment: Alignment.topRight, //etai dot ta move kore gelo
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  Positioned(
                    right: 2,
                    top: 2,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        // border: Border.all(
                        //   color: AppColors.primaryColor,
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        /**3....Now we will create a searchBar */
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Search your subject',
            hintStyle: TextStyle(
              color: AppColors.primaryColor,
            ),
            //enabled: true,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide.none),
            contentPadding: EdgeInsets.symmetric(vertical: 15),

            prefixIcon: Icon(
              Icons.search,
              size: 25,
              color: AppColors.primaryColor,
            ),

            suffixIcon: Icon(
              Icons.mic,
              size: 25,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    ),
  );
}
