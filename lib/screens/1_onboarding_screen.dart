// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:e_learning_app/screens/2_nav_bar_screen.dart';
import 'package:e_learning_app/utils/colors.dart';
import 'package:e_learning_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /**1...Now we are starting responsive design from here, we will use MediaQuery.
     * MediaQuery will works on device(resolution) wise. 
     * and we will save MediaQuery inside a variable
    */
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      //backgroundColor: Color(0xFF7455F7),
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(
          /**3...Now we adjust our container, for responsive we will n ot use SizedBox() for spacing
           * we will use Corss or MainAxis Allignment
           */
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //3.1....For better spacing here we will place a SizedBox
            SizedBox(),
            Image.asset(
              'assets/images/e_learning.png',
              width: 300,
            ),
            //2...Now, here we r taking another container and set height as size(variable)
            Container(
              width: size.width, //for responsive width
              height: size.height * .45,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              /**4....Now here we write our Headline or title and subTitle */
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //TEXT 1
                    Text(
                      'Discover your next skill\nLearn anything you want!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.7),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //TEXT 2
                    Text(
                      'Discover the things you want to\nlearn and grow with them',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //Button 1, we will create a button with container
                    //Custom button nam er new dart file e amra ei full container ta move kore niyechhi and
                    //ekhe container ta remove kore oi custom button k ekhne call kore nebo
                    CustomButton(
                      /**5....Ebar amra ekta onTap create korbo to go another screen, tar jonno amra Custom button k
                       * InkWel diye wrap kore nebo
                       * Abar ta na kore actual j CustonButton create korechhi sekhane giyeo seta kora jabe and
                       * reUsabble hoye jabe, se khetre amra Container k wrap korbo
                       */
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavBarView(),
                            ),);
                      },
                      title: 'Get Started',
                      width: size.width * .4,
                    ),
                    //ekhn jodi bar bar ei custom button k call kori then eta same nam er button return debe
                    // but amra seta chai na then amra cuntom Button k call kore tar modhye ekta value
                    //pass korabo
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
