import 'package:flutter/material.dart';

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
       //shrinkWrap: true,
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
           height: 100,
           child: GridView(
             gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 1,
             ),
             scrollDirection: Axis.horizontal,
             children: [
                       Stack(
                         children: [
                     Image.asset('images/personal.jpg',
                     height: 500,
    width: 400,
    ),
    const CircleAvatar(
    backgroundImage: AssetImage('images/plus.png',
    ),
    radius: 20,
    )

    ],
    ),
                      Stack(
                            children: [
                    Image.asset('images/anita.jpg',
                      height: 300,
                       width: 300,
                      ),
            const Align(
              alignment: AlignmentDirectional.topStart,
              child: CircleAvatar(
    backgroundImage: AssetImage('images/personal.jpg',
    ),
    radius: 15,
    ),
            )

    ],
    ),
                        Stack(
               children: [
    Image.asset('images/person2.jpg',
    height: 300,
    width: 300,
    ),
    const CircleAvatar(
    backgroundImage: AssetImage('images/anita.jpg',
    ),
    radius: 15,
    )

    ],
    ),
    Stack(
    children: [
    Image.asset('images/r2.jfif',
    height: 300,
    width: 300,
    ),
    const CircleAvatar(
    backgroundImage: AssetImage('images/person2.jpg',
    ),
    radius: 20,
    )

    ],
    ),
    Stack(
    children: [
    Image.asset('images/personal.jpg',
    height: 300,
    width: 300,
    ),
    const CircleAvatar(
    backgroundImage: AssetImage('images/r2.jfif',
    ),
    radius: 15,
    )

    ],
    ),

    Stack(
    children: [
    Image.asset('images/person2.jpg',
    height: 300,
    width: 300,
    ),
    const CircleAvatar(
    backgroundImage: AssetImage('images/r2.jfif',
    ),
    radius: 15,
    )

    ],
    ),

               
             ],
           ),
         ),

         const SizedBox(height: 10,),

         Row(
           children: const [
             CircleAvatar(
               backgroundImage: AssetImage('images/personal.jpg'),

             ),

             SizedBox(width: 10,),

             Text('Jordan Praise ',
             style: TextStyle(
               fontWeight: FontWeight.bold,
             ),
             ),

             Text('updated his cover photo'),

             Spacer(),

             Icon(Icons.more_horiz_rounded)
           ],
         ),



         const Text('              3 min ago'),

         const SizedBox(height: 10,),

         Image.asset(
           'images/l.jfif',
        // height: 400,
           //width: double.infinity,

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

             const Text('122 Comments',
             style:  TextStyle(
               color: Colors.black
             ),
             ),
           ],
         ),

         const SizedBox(height: 6,),

         const Divider(
           color: Colors.black26,

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
