import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoControlWidget extends StatelessWidget {
  final VideoPlayerController controller;
  const VideoControlWidget({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return  Stack(children: [
      AnimatedSwitcher(duration: Duration(milliseconds: 50),
        reverseDuration: Duration(milliseconds: 200),
    child: controller.value.isPlaying?SizedBox.shrink():Container(
      color: Colors.black26,
      child: Center(
        child: Icon(
          Icons.play_arrow,
          color: Colors.white,
          size: 100.0,
        ),
      ),
    ),
      ),
   GestureDetector(
     onTap: (){
       controller.value.isPlaying
           ? controller.pause()
           : controller.play();
     },
   ),
    ],);
  }
}
