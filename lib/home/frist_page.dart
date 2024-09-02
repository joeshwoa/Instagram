import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/home/second_page.dart';

class FristPage extends StatefulWidget {
   FristPage({super.key});
  @override
  State<FristPage> createState() => _FristPageState();}

class _FristPageState extends State<FristPage>
{
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondPage(),)),);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold (
      body: Container(
        color: Colors.grey[900],
        height:MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width:10,height:170),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image (image: AssetImage('assets/imges/instagram-logo-.png'),width: 100,),
              ],
            ),
            SizedBox(height: 280,width: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image (image: AssetImage('assets/imges/Meta_logo.png'),width:100),
              ],
            ),
          ],
        ),
      ),


    );
  }
}