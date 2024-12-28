import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey,
          child: CircleAvatar(
            radius: 36,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/57899051?v=4',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Nights',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
