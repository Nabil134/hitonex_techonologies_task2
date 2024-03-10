import 'package:flutter/material.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Color(0xff282B30),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.arrow_back_ios,color: Colors.white,),
          ),
        Container(
          height: 40,
          width: 188,
          decoration: BoxDecoration(
            color: Color(0xff282B30),
            borderRadius: BorderRadius.circular(12),
          ),
       child: Center(
         child: Text('Download',style: TextStyle(
           color: Color(0xffFFFFFF),
           fontSize: 16,
           fontWeight: FontWeight.w400,
         ),),
       ),
        ),
          Container(
            height: 40,
            width: 40,
            margin:const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
              color: Color(0xff282B30),
              borderRadius: BorderRadius.circular(12),
            ),
            child: PopupMenuButton(
              color: Colors.grey,
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context)=>[
                const PopupMenuItem(
                  value: 1,
                  child: Text('Pause all'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Rename all'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Batch delete'),
                ),
              ],
            ),


          ),
        ],),
        /*first portion end here*/
        const SizedBox(height: 20,),
        /*second portion start here*/
        Expanded(child: ListView.builder(
          itemCount: 5,
            itemBuilder: (context,index){
          return Container(
            height: 180,
            width: 500,
            margin: const EdgeInsets.all(4),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff282B30),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/Rectangle 47.png'),
                    Expanded(
                      child: Text('Lorem ipsum dolor sit amet consectetur. Risus proin\n vulputate quam faucibus vestibulum ........',style: TextStyle(

                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF),
                      ),),
                    ) ,
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Color(0xff686A70),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.close),
                    ),
                  ],),

                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('7.09MB',style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),),
                    Text('01/01/2024',style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),),
                  ],),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProgressBar(value: 0.5,
                      width: 280,
                      color:Color(0xff1EC7FD),
                      backgroundColor: Colors.white,
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: Color(0xff686A70),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.pause),
                    ),
                  ],),
              ],
            ),
          );

        }),
        ),

        /*second portion end here*/
      ],),
      ),
    );
  }
}
