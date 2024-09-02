import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
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

class _SecondPageState extends State<SecondPage> {

  TextEditingController commentControllers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.grey[900],
        title: Text('Instagram',style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white)),
        actions: [
          IconButton(
            onPressed:(){},
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
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              if(Index!=0) Container(
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
                                      backgroundImage: AssetImage(storyData[Index]),
                                    ),
                                  ),
                                ),
                              ),

                              if(Index==0) CircleAvatar(
                                radius: 30.0,
                                backgroundImage: AssetImage(storyData[Index]),
                              ),

                              if(Index==0) CircleAvatar(
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
                            usernames[Index],
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),

            SizedBox(height:10),
            for(int index=0;index<5;index++)...[

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
  }
}