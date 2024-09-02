import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/Features/Home/pres/cubit/home_cubit.dart';
import 'package:instagram/home/second_page.dart';

class PostCustom extends StatefulWidget {
  const PostCustom({super.key});

  @override
  State<PostCustom> createState() => _PostCustomState();
}

class _PostCustomState extends State<PostCustom> {

  int favoriteCounter = 0;
  int chatCounter = 0;
  int sendCounter = 0;
  TextEditingController commentControllers = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:10),
      child: Column(
        children: [
          Image.network(
            'https://picsum.photos/900/1100', fit: BoxFit.cover,),
          Row(
              children: [
                IconButton(
                  onPressed:(){
                    setState(() {
                      favoriteCounter++;
                    });
                    context.read<HomeCubit>().plus();
                  },
                  icon: Icon(Icons.favorite_outline,color:Colors.white,),),
                Text('${favoriteCounter}',style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white)),
                IconButton(
                  onPressed:(){
                    setState(() {
                      chatCounter++;
                    });
                  },
                  icon: Icon(Icons.mark_unread_chat_alt_rounded,color:Colors.white,),),
                Text('${chatCounter}',style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white)),
                IconButton(
                  onPressed:(){
                    setState(() {
                      sendCounter++;
                    });
                  },
                  icon: Icon(Icons.near_me_outlined,color:Colors.white,),),
                Text('${sendCounter}',style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white)),
                SizedBox(width:180),
                IconButton(
                  onPressed:(){},
                  icon: Icon(Icons.label_important_outlined,color:Colors.white,),),
              ]
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Captionnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn +More...',
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white)),
                Text('View all comments',
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
                SizedBox(height:8),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage('assets/storyimges/2a01b4f2-c0ce-41c6-81b4-b45f55a0c613.jpg'),
                    ),
                    SizedBox(width:15),

                    Expanded(
                      child: TextField(
                        controller: commentControllers,
                        decoration: InputDecoration(
                          hintText: 'Add a comment...',
                          hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(color: Colors.white),
                        onSubmitted: (text) {
                          if (text.isNotEmpty) {
                            setState(() {
                              chatCounter++;
                            });
                            commentControllers.clear();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
