import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> with SingleTickerProviderStateMixin {


  @override
  void initState() {

    super.initState();

    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/home_screen');
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
          child:  Text('Facebook',
          style:  TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
          ),
        ),
      ),
    );
  }
}

