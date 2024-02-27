import 'package:e_learning_app/screens/3_home_screen.dart';
import 'package:e_learning_app/utils/colors.dart';
import 'package:flutter/material.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  //ebar ekta index nite hbe
  int currentIndex = 0;

  /**2....Here we will create a List<Widget> ekhe j kono type er widget nebe */
  List<Widget> screens = [
    const HomeScreen(),
    //ekhne featured tai home scree e dekhachhe

    //FOR MY LEARNING SCREEN
    const Center(
      child: Text('My Learning'),
    ),

    //FOR MY WISHLIST SCREEN
    const Center(
      child: Text('Wishlist'),
    ),

    //FOR MY SETTING SCREEN
    const Center(
      child: Text('Setting'),
    ),

    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex =
                value; //ekhne amra j item e click korbo setai set hbe
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
              //FOR Featured
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.star),
              icon: Icon(Icons.star_border),
              label: 'Featured'),

              //FOR Learning
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline), label: 'My Learning'),

              //FOR Favorite
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Whishlist'),

              //FOR Settings
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
