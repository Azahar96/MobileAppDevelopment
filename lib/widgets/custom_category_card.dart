import 'package:e_learning_app/screens/course_details/course_details_screen.dart';
import 'package:flutter/material.dart';

/**Ageer Container er moto course er category keo extract kore nilam alada ekta dart file e
 * r eta k amra home screen theke CustomCategoryCard ke return kore debo
 */

class CustomCategoryCard extends StatelessWidget {
  final String categoryName;
  final String icon;
  final dynamic totalCourses;


  const CustomCategoryCard(
      {super.key,
      required this.categoryName,
      required this.icon,
      required this.totalCourses});

  @override
  Widget build(BuildContext context) {
    //8...Now we will create onTap function, when we tap on any course then it will navigate to another screen
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CourseDetailsScreen(
          courseName: categoryName,
        ),));
      },
      child: Container(
        //padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.3),
              blurRadius: 10,
              spreadRadius: .5,
            ),
          ],
        ),
        //7...Now we will design our container with all course details
      
        //THIRD COLUMN
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 100,
              width: 100,
            ),
            //7.2...Now we will Give the course title and no of course
            Text(
              categoryName,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            //7.3...No Of course
            Text(
              '$totalCourses courses',
            ),
          ],
        ),
      ),
    );
  }
}
