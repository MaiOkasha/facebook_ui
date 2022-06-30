import 'package:facebook_ui/data/postResponse.dart';

List<Map<String, dynamic>> postsResponse = [
  {
    'user': {
      'name': 'Jordan Praise',
      'image': 'images/personal.jpg'
    },
    'post': {
       'image' : 'https://th.bing.com/th/id/OIP.KJlgVz3okFEagP5mtnXhUQHaLG?pid=ImgDet&rs=1'    }
  },
  {
    'user': {
      'name': 'momen',
      'image':
      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'
    },
    'post': {
      'content': "hello world",
      'image':
      'https://th.bing.com/th/id/R.070d9628d4e02afe79ad6e3c14536bbd?rik=xGsvTTIMf1q%2bgw&riu=http%3a%2f%2fpavbca.com%2fwalldb%2foriginal%2f1%2f5%2f0%2f112050.jpg&ehk=ivxe79e7zQ7qkoaVUqV34bSAtM2j5q9sudiPo%2bjgrds%3d&risl=&pid=ImgRaw&r=0',
      'noLikes': 20
    }
  },
  {
    'user': {
      'name': 'Tia',
      'image':'https://i.pinimg.com/736x/25/7c/b6/257cb69a5cad5ec4d8545ef16fdfb56c.jpg'
    },
    'post': {
      'content': "i love programming",
      'image':'https://th.bing.com/th/id/R.a9dc2ef5d11871f031121415c0a94ecc?rik=E8nQQOJnctkKAg&pid=ImgRaw&r=0',
      'noLikes': 20
    }
  },
  {
    'user': {
      'name': 'farah',
      'image':'https://th.bing.com/th/id/OIP.28RihI6ZT0wi4DnU8hUgXwHaHi?pid=ImgDet&w=1080&h=1100&rs=1'
    },
    'post': {
      'content': "welcome to gsk",
      'image':'https://th.bing.com/th/id/OIP.c2eJoJ5BYlIJHsT1oEC-VQHaED?pid=ImgDet&rs=1',
      'noLikes': 20
    }
  },
  {
    'user': {
      'name': 'Sara',
      'image':'https://i.pinimg.com/originals/41/c1/4a/41c14a88b1ddc4cd8055549b7a88b018.jpg',
    },
    'post': {
      'content': "hello everyone",
      'image':'https://jooinn.com/images/london-eye-11.jpg',
      'noLikes': 20
    }
  }
];

List<PostResponse> post = postsResponse.map((e) => PostResponse.fromJson(e)).toList();