import 'package:flutter/material.dart';
import 'package:project/view/main_screen/nav_pages/file/video_player.dart';

class FilePage extends StatefulWidget {
  const FilePage({super.key});

  @override
  State<FilePage> createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
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
                  child: Text('Files',style: TextStyle(
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
                child: Icon(Icons.more_vert,color: Colors.white,),
              ),
            ],),
          /*first portion end here*/
          const SizedBox(height: 20,),
          /*second portion start here*/
          Expanded(
            child: ListView.builder(
              itemCount: 6,
                itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>VideoPlayer()));
                },
                child: Container(
                  height: 150,
                  width: 500,
                  margin: const EdgeInsets.all(4),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xff282B30),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
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
                        PopupMenuButton(
                            color: Colors.grey,
                            icon: const Icon(Icons.more_vert_outlined),
                            itemBuilder: (context)=>[
                              const PopupMenuItem(
                                value: 1,
                                child: Text('Share'),
                              ),
                              const PopupMenuItem(
                                value: 2,
                                child: Text('Rename'),
                              ),
                              const PopupMenuItem(
                                value: 3,
                                child: Text('Go to website'),
                              ),
                              const PopupMenuItem(
                                value: 4,
                                child: Text('Delete'),
                              ),
                            ]),
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
                  ],),
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
