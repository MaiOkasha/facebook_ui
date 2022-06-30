import 'package:facebook_ui/widgets/StoryWidget.dart';
import 'package:flutter/material.dart';

import '../widgets/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late TextEditingController _searchEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchEditingController = TextEditingController();
  }

  @override
  void dispose() {
   _searchEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.camera_alt_rounded,
        color: Colors.black,
        ),

        title: Container(

      width: 300,

      child: TextField(

        controller: _searchEditingController,
        keyboardType: TextInputType.text,
        onChanged: (String value) {},
        style: const TextStyle(
          color: Colors.black45,
        ),

        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          contentPadding:  const EdgeInsets.symmetric(horizontal: 10),
          hintText: 'Search',
          hintMaxLines: 1,

          hintStyle: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500
          ),

          fillColor: Colors.black12,

          filled: true,

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.white,
                width: 2,
              )),

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 1,
              )),

          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.red.shade100,
                width: 1,
              )),
        ),
      ),
    ),

           actions: [
              Image.asset('images/messenger.png',
                            height: 30,
                            width: 40,
                         ),

                    ],
      ),

     body: ListView(

       physics: const AlwaysScrollableScrollPhysics(),
       scrollDirection: Axis.vertical,

       padding: const EdgeInsets.all(10),

       children: [
         Row(
           children:  [
             const Text(
               'Stories',
               style:  TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.w500,
                 fontSize: 22,
               ),
             ),

             const Spacer(),

             const Text('See Archive  ',
               style:  TextStyle(
                 color: Colors.black54,
                 fontWeight: FontWeight.w400,
                 fontSize: 20,
               ),
             ),

     IconButton(onPressed: (){

       Navigator.pushNamed(context, '/feed_screen');

     }, icon: const Icon(Icons.arrow_forward_ios,
       size: 18,
       color: Colors.black54,
     ))
           ],
         ),

         const SizedBox(height: 10,),

         SizedBox(

           height: 140,
          width: 100,
           child: GridView(
             gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 1,
             ),

             scrollDirection: Axis.horizontal,

             children: const [
                      StoryWidget(userImage: 'images/plus.png',storyImage: 'images/personal.jpg'),
                      StoryWidget(userImage: 'images/personal.jpg', storyImage: 'images/anita.jpg'),
                      StoryWidget(userImage: 'images/person2.jpg', storyImage: 'images/anita.jpg'),
                      StoryWidget(userImage:'images/user4.jpg' , storyImage: 'images/r2.jfif'),
                      StoryWidget(userImage:'images/person2.jpg' , storyImage: 'images/r2.jfif'),
                      StoryWidget(userImage:'images/person2.jpg' , storyImage: 'images/r2.jfif'),
                      StoryWidget(userImage:'images/person2.jpg' , storyImage: 'images/r2.jfif'),
                      StoryWidget(userImage:'images/person2.jpg' , storyImage: 'images/r2.jfif'),

             ],
           ),
         ),

         const SizedBox(height: 10,),

         const Post(name: 'Mai', userImage: 'images/user.jpg', postImage: 'images/l.jfif', noLike: '122 Comments',),
          const Post(name: 'Roua', userImage: 'images/personal.jpg', postImage: 'images/london2.jfif',noLike: '200 comments',),
          const Post(name: 'Doha',userImage: 'images/person2.jpg', postImage: 'images/r2.jfif',noLike: '300 Comment',),
          const Post(name: 'Tala' , userImage: 'images/user4.jpg', postImage: 'images/r5.jfif',noLike: '199 Comments',),


        const SizedBox(height: 30,),

         Row(
           children:  [
             const CircleAvatar(
               maxRadius: 20,
               backgroundImage: AssetImage(
                 'images/person2.jpg'
               ),
             ),

             const SizedBox(width: 10,),

             Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Row(
                   children: const [
                     Text('Anita Neaolas ',
                     style:  TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 18
                     ),
                     ),

                     Text('had a photoShot',
                     style: TextStyle(
                       fontSize: 18
                     ),
                     )
                   ],
                 ),
                 const SizedBox(height: 8,),
                 Row(
                   children: const [
                     Text('session at',
                       style: TextStyle(
                           fontSize: 18
                       ),
                     ),

                     Text(' Kings Loughe',
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                         fontSize: 18
                       ),
                     ),
                   ],
                 ),

               ],
             ),

             const Spacer(),

             const CircleAvatar(
               backgroundColor: Colors.blue,
               child: Icon(Icons.add),
               radius: 28,
             )
           ],
         ),


       ],
     ),


    )
    ;
  }
}



