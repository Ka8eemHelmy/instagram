import 'package:flutter/material.dart';
import 'package:instagram2/view/screens/add_new_post/add_new_post_screen.dart';
import 'package:instagram2/view/screens/home/home_screen.dart';
import 'package:instagram2/view/screens/profile/profile_screen.dart';
import 'package:instagram2/view/screens/reels/reels_screen.dart';
import 'package:instagram2/view/screens/search/search_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final List<Widget> screens = const [
    HomeScreen(),
    SearchScreen(),
    AddNewPostScreen(),
    ReelsScreen(),
    ProfileScreen(),
  ];

  int currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
        currentIndex: currentScreenIndex,
        onTap: (value) {
          setState(() {
            currentScreenIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Colors.black,
            label: '',
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search_rounded,
            ),
            activeIcon: Icon(
              Icons.search_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.add_box_outlined,
            ),
            activeIcon: Icon(
              Icons.add_box,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.video_library_outlined,
            ),
            activeIcon: Icon(
              Icons.video_library,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: CircleAvatar(
              radius: 14.0,
              backgroundImage: NetworkImage(
                'https://www.instagram.com/static/images/ico/favicon-192.png/68d99ba29cc8.png',
              ),
            ),
            activeIcon: CircleAvatar(
              radius: 14.0,
              backgroundImage: NetworkImage(
                'https://www.instagram.com/static/images/ico/favicon-192.png/68d99ba29cc8.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
