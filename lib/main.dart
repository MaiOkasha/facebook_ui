
import 'package:facebook_ui/screens/feed_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/launch_screen.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/launch_screen',

      routes: {
      '/launch_screen' : (context)=> const LaunchScreen(),
        '/home_screen' : (context)=>const HomeScreen(),
       '/feed_screen' : (context)=> const FeedScreen(),
      },
    );
  }
}
