import 'package:e_learning_app/utils/colors.dart';
import 'package:e_learning_app/widgets/custom_app_bar.dart';
import 'package:e_learning_app/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class CourseDetailsScreen extends StatefulWidget {
  final String courseName;

  const CourseDetailsScreen({super.key, required this.courseName});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  //When we will back from video then Video will be Stoped autometically
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //print('I am Dispose');
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: customAppBar(context: context, title: widget.courseName),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * .25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    blurRadius: 8,
                    spreadRadius: .5,
                  ),
                ],
              ),
              child: const Center(
                child: Icon(
                  Icons.play_circle_outline,
                  size: 35,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Text
            Text(
              'Career with Flutter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            SizedBox(
              height: 5,
            ),

            //Course created By. and we take another ROW
            Row(
              children: [
                Text(
                  'Created By',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Azahar Saikh',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 5,
            ),
            //Taking another ROW for review or rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.black.withOpacity(.75),
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    //Rating
                    Text(
                      '4.5',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    //ACCESS TIME
                    Text(
                      '500 Hours',
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),

                //Course Price
                Text(
                  '\$100.00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //Here We will create a TAB bar
          ],
        ),
      ),
      //Last Widget of this Screen Bottom NavBar
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: const Row(
              children: [
                Expanded(
                  //flex: 3,
                  child: CustomButton(
                    icon: Icons.rice_bowl_sharp,
                    title: '',
                    backgroundColor: Colors.orange,
                    borderRadius: 35,
                  ),
                ),

                SizedBox(width: 5,),


                Expanded(
                  flex: 3,
                  child: CustomButton(
                    title: 'Enroll Now',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
