import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Header with Image and Text of Publisher and Follow
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/57899051?v=4',
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'mohamedyassin183_ and uniquesunshine_',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Ras ElBar, Dumuat, Egypt',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Follow',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        /// Image of Post
        Image.network(
          'https://avatars.githubusercontent.com/u/57899051?v=4',
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 10,
        ),
        /// Fav and Comments and Share Counter and Bookmark
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_rounded,
              ),
            ),
            Text(
              '12.8K',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mode_comment_outlined,
              ),
            ),
            Text(
              '62',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
              ),
            ),
            Text(
              '1,219',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border_rounded,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        /// Likes with Image
        Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/57899051?v=4',
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Liked by ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Menna_magdy',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Other',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        /// Comments
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'mohamedyassin183_ ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Ras El Bar Like You\'re never seen it askd asd asd asd  before 😍',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: ' ...more',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        /// Time of Post
        Text(
          '1 HOUR AGO',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
