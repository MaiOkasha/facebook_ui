import 'package:facebook_ui/data/postt.dart';
import 'package:facebook_ui/data/user.dart';

class PostResponse{

 User? user;
 Postt? post;


  PostResponse.fromJson(Map<String,dynamic> data){

    user = User.fromJson(data['name']);
    post = Postt.fromJson(data['post']);
  }




  }