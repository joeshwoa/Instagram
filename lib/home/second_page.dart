import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/Core/Widgets/post_custom.dart';
import 'package:instagram/Core/Widgets/story_custom.dart';
import 'package:instagram/Features/Home/pres/cubit/home_cubit.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  TextEditingController commentControllers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
    builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.grey[900],
          title: Text(context.read<HomeCubit>().count.toString()/*'Instagram'*/,style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white)),
          actions: [
            IconButton(
              onPressed:(){
                context.read<HomeCubit>().plus();
              },
              icon: Icon(Icons.favorite_outline,color:Colors.white,),
            ),
            IconButton(
              onPressed:(){},
              icon: Icon(Icons.near_me_outlined,color:Colors.white,),
            ),
          ],
        ),
        body: Container(
          color: Colors.grey[900],
          height:MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: storyData.length,
                    itemBuilder:(context,Index) {
                      return StoryCustom(type: Index==0?UserType.me:UserType.follower, image: storyData[Index], username: usernames[Index]);
                    }
                ),
              ),

              SizedBox(height:10),
              for(int index=0;index<200;index++)...[
                PostCustom(),
              ],
            ],
          ),
        ),

        bottomNavigationBar:Container(
          height: 33,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.home),color:Colors.white,
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.saved_search_outlined),color:Colors.white,
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.add_box_outlined),color:Colors.white,
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.video_library_outlined),color:Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(top:8),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/storyimges/2a01b4f2-c0ce-41c6-81b4-b45f55a0c613.jpg'),
                ),
              ),
            ],
          ),
        ),
      );
    },
    );
  }
}

List<String> storyData = [
  'assets/storyimges/2a01b4f2-c0ce-41c6-81b4-b45f55a0c613.jpg',
  'assets/storyimges/29aefd5f-bb23-456c-a0aa-dc50869c6093.jpg',
  'assets/storyimges/a6abd8a6-ef3e-45b7-bfcb-562d8f62e6ff.jpg',
  'assets/storyimges/1.jpg',
  'assets/storyimges/2.jpg',
  'assets/storyimges/3.jpg',
];
List<String> usernames = [
  'Your story',
  'john_doe_91',
  'emily.smith22',
  'michael_jordan',
  'ryan_walker',
  'blue_heart22'
];
List<int> favoritecout = List.filled(5,0);
List<int> chatcount = List.filled(5,0);
List<int> sendcount = List.filled(5,0);