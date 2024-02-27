import 'package:e_learning_app/screens/widget/app_bar.dart';
import 'package:e_learning_app/utils/colors.dart';
import 'package:e_learning_app/widgets/custom_category_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    //6...For placing our category we will create a ListMap
    List<Map> categories = [
      {
        'icon': 'assets/images/accounting.png',
        'name': 'Accounting',
        'total_courses': 100,
      },
      {
        'icon': 'assets/images/eng_tech.png',
        'name': 'Eng & Tech',
        'total_courses': 80,
      },
      {
        'icon': 'assets/images/app_dev.png',
        'name': 'Mobile App Development',
        'total_courses': 86,
      },
      {
        'icon': 'assets/images/web_dev.png',
        'name': 'Web Development',
        'total_courses': 90,
      },
      {
        'icon': 'assets/images/ai_tech.png',
        'name': 'AI & ML',
        'total_courses': 110,
      },
      {
        'icon': 'assets/images/cook.png',
        'name': 'Cooking',
        'total_courses': 45,
      },
      {
        'icon': 'assets/images/accounting.png',
        'name': 'Accounting',
        'total_courses': 100,
      },
      {
        'icon': 'assets/images/accounting.png',
        'name': 'Accounting',
        'total_courses': 100,
      },
    ];

    return Scaffold(
      body: //Center(child: Text('Hi')),
          //To scrollable whole UI This Colum need to define with  SingleChildScrollView.
          //but We want to scrool only the item inside of Container then we will wrap the second Colum or
          //First padding
          Column(
        children: [
          /**THIS CONTAINER IS THE HEADER OR APPBAR */
          homeAppBar(size),

          /**4.... */
          const SizedBox(
            height: 20,
          ),

          //Design Starts
          /**First colum is holding all the screen so we wrap the Row with Column and then 
           * we wrap that second Column with padding.
           */
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15),

              //SECOND COLUMN
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //For category
                        Text(
                          'Explore Category',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        //For another text SEE ALL
                        Text(
                          'See all',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    //5....Now we will design a GridView
                    GridView.builder(
                      itemCount: /*8*/ categories.length,
                      /**physics is used for proper scrollable the widgets inside GridView.builder*/
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing:
                            8.0, // Set the spacing between columns
                        mainAxisSpacing: 8.0, // Set the spacing between rows
                        //childAspectRatio: .9, //Set the perfect height of Grid Container
                      ),
                      itemBuilder: (context, index) {
                        //7.1...jehetu Index k amra bar bar call korbo tai ekta var nbiniye nilam
                        final data = categories[index];
                        return CustomCategoryCard(
                            categoryName: data['name'],
                            icon: data['icon'],
                            totalCourses: data['total_course'],);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
