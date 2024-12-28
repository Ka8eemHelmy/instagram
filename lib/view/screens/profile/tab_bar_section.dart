import 'package:flutter/material.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.apps,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.video_library,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.account_box_outlined,
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                    30,
                    (index) => Image.network(
                        'https://picsum.photos/200/400?random=$index',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                    30,
                        (index) => Image.network(
                      'https://picsum.photos/300/400?random=$index',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                    30,
                        (index) => Image.network(
                      'https://picsum.photos/400/400?random=$index',
                      fit: BoxFit.cover,
                    ),
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
