
import 'package:flutter/material.dart';


class Post extends StatelessWidget {
  const Post({
    Key? key,
    required this.name,
    required this.userImage,
    required this.postImage,
    required this.noLike



  }) : super(key: key);
  final String name;
  final String userImage;
  final String postImage;
  final String noLike;


  @override



  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children:  [
            CircleAvatar(

              backgroundImage: AssetImage(userImage),

            ),

            const SizedBox(width: 10,),

            Text(name ,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text('  '),

            const Text('updated his cover photo'),

            const Spacer(),

            const Icon(Icons.more_horiz_rounded)
          ],
        ),

        const Text('              3 min ago'),

        const SizedBox(height: 10,),

        Image.asset(
          postImage
        ),

        const SizedBox(height: 20,),

        Row(
          children: [
            Image.asset('images/like.png',
              height: 30,
              width: 30,
            ),

            Image.asset('images/lovve.png',
              height: 30,
              width: 30,
            ),

            const Spacer(),

           Text(noLike,
              style:  const TextStyle(
                  color: Colors.black
              ),
            ),
          ],
        ),

        const SizedBox(height: 6,),

        const Divider(
          color: Colors.black26,
          thickness: 1,

        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset('images/blackLike.jfif',
              height: 30,
              width: 30,
            ),

            const Text('Like',
              style: TextStyle(
                  fontSize: 18
              ),
            ),

            const SizedBox(width: 140,),

            Image.asset('images/comment.png',
              height: 20,
              width: 20,
            ),

            const Text('  Comment'),
          ],
        ),
      ],
    );
  }
}
