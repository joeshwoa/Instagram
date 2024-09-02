import 'package:flutter/material.dart';

enum UserType {
  me,
  follower,
}

class StoryCustom extends StatelessWidget {
  final UserType type;
  final String image;
  final String username;
  const StoryCustom({super.key, required this.type, required this.image, required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              if(type==UserType.follower) Container(
                width:65,
                height: 65,
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.amberAccent,Color(0xFFd13a8c),Colors.deepOrange,Color(0xFFEFA3EF)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 34,
                  backgroundColor: Colors.grey[900],
                  child: Padding(
                    padding:  EdgeInsets.all(4),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(image),
                    ),
                  ),
                ),
              ),

              if(type==UserType.me) CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(image),
              ),

              if(type==UserType.me) CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey[900],
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add, color: Colors.white,size: 20),
                ),
              ),
            ],
          ),
          SizedBox(height:5),
          Text(
            username,
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
