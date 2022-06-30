import 'package:flutter/material.dart';


class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key? key,
    required this.userImage,
    required this.storyImage


  }) : super(key: key);
  final String userImage;
  final String storyImage;

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Image.asset(storyImage,
          height:400,
          width: 500,

        ),
         Padding(
           padding: const EdgeInsets.only(top: 6,left:20),
           child: CircleAvatar(
            backgroundImage: AssetImage(userImage,
            ),
            radius: 20,
        ),
         )

      ],
    );
  }
}
