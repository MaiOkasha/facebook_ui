import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {

  late TextEditingController _commentEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _commentEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _commentEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/home_screen');
        }, icon: const Icon(Icons.arrow_back_ios,
        color: Colors.black,
        )),
        title: const Text('feed',
        style:  TextStyle(
          color: Colors.black
        ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        children: [

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

              const Icon(Icons.more_horiz_rounded)
            ],
          ),

          const SizedBox(height: 20,),

          const Text('                32 mins ago',
          style: TextStyle(
            color: Colors.black54
          ),
          ),
          
          const SizedBox(height: 30,),
          
          Column(
            children: const [
              Text('Suspendisse nec edt erat aliquat non vel'),
            Text('nunc. Phaselts in porta erat, sed sollicition nna'),
            ],
          ),
          
          const SizedBox(height: 30,),

          Image.asset('images/london2.jfif'),

          const SizedBox(height: 10,),

          Image.asset('images/l.jfif'),

          const SizedBox(height: 10,),

          Image.asset('images/OIP.jfif'),

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

              const Text('    400'),

              const Spacer(),

              const Text('122 Comments',
                style:  TextStyle(
                    color: Colors.black
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),

          Row(
            children: [
              Image.asset('images/blackLike.jfif',
                height: 30,
                width: 30,
              ),

              Container(
                width: 340,
                child: TextField(

                  controller: _commentEditingController,
                  keyboardType: TextInputType.text,
                  onChanged: (String value) {},
                  style: const TextStyle(
                    color: Colors.black45,
                  ),
                  decoration: InputDecoration(

                    suffixIcon: const Icon(Icons.gif_sharp),
                   // suffix: Icon(Icons.tag_faces),

                    contentPadding:  const EdgeInsets.symmetric(horizontal: 10),
                    hintText: '  Add a comment',
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
              )
            ],
          )
        ],
      ),
    );
  }
}
