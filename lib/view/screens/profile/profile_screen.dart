import 'package:flutter/material.dart';
import 'package:instagram2/view/screens/profile/tab_bar_section.dart';
import 'package:instagram2/view/widgets/status_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.lock_open,
              color: Colors.white,
            ),
            SizedBox(
              width: 4,
            ),
            Text('Ka8eemHelmy'),
            SizedBox(
              width: 4,
            ),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.white,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.red,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.alternate_email,
                  color: Colors.white,
                ),
                PositionedDirectional(
                  top: -10,
                  end: -18,
                  child: Container(
                    padding: EdgeInsetsDirectional.only(
                      start: 4,
                      end: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '9 +',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/57899051?v=4',
                          ),
                          radius: 50,
                          child: Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        PositionedDirectional(
                          top: -14,
                          start: 16,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey.withOpacity(0.8),
                            ),
                            child: Text(
                              'Share a\n Song',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey[100], fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '79',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'posts',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '633',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'followers',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            '1,919',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'following',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Kareem Ahmed',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Take Everything easy and enjoy ˘◡˘',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'H Photography',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'Contact 01064648972',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.attach_file_sharp,
                          color: Colors.blue,
                        ),
                        Text(
                          'Contact 01064648972',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                Row(
                  children: [
                    Icon(
                      Icons.alternate_email,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'ka8eemhelmy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.facebook,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'ka8eemhelmy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Share Profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return StatusWidget();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 600,
            child: TabBarSection(),
          ),
        ],
      ),
    );
  }
}
