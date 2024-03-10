import 'package:flutter/material.dart';
import 'package:project/widget/video_player_widget.dart';
class VideoPlayer extends StatelessWidget {
  const VideoPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xff686A70),
              const Color(0xff282B30),
            ],
            stops: [
              0.5,0.5
            ],
          ),
        ),
      child: Column(children: [
        SizedBox(height: 20,),
        /*first portion start here*/
        Row(children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Color(0xff282B30),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
          ),
        ],),
        /*first portion end here*/
        const SizedBox(height: 20,),
        VideoPlayerWidget(),

      ],),
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.fast_rewind,color: Colors.blue,),
        Icon(Icons.pause,color: Colors.blue,),
        Icon(Icons.fast_forward,color: Colors.blue,),
      ],),
      ),

    );
  }
}
