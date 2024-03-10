import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool value1=false;
  bool value2=false;
  bool value3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
     child: SingleChildScrollView(
       child: Column(

         children: [
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
                 child: Text('Setting',style: TextStyle(
                   color: Color(0xffFFFFFF),
                   fontSize: 16,
                   fontWeight: FontWeight.w400,
                 ),),
               ),
             ),
           ],),
         /*first portion end here*/
         SizedBox(height:20,),
         /*second portion start here*/
         Text('General',style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.w400,
           fontSize: 15,
         ),),
         /*second portion end here*/
           const SizedBox(height: 20,),
           /*third portion start here*/
           Container(
             height: 453,
             width: 386,
             padding: const EdgeInsets.all(15),
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(20),
             ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
             IconAndTextWidget(txt1: 'Download Location',txt2:'/storage/Download/All Video Downloader' ,icon: Icons.folder,),
             IconAndTextWidget(txt1: 'Search Engine',txt2:'/storage/Download/All Video Downloader' ,icon: Icons.folder,),
             IconAndTextWidget(txt1: 'App Language',txt2:'English' ,icon: Icons.language,),
             IconAndTextWidget(txt1: 'Download with WiFi Only', icon: Icons.wifi),
             IconAndTextWidget(txt1: 'Bookmarks', icon: Icons.favorite),
             IconAndTextWidget(txt1: 'History', icon: Icons.history),
             IconAndTextWidget(txt1: 'Advance Mode', icon: Icons.mode),
             IconAndTextWidget(txt1: 'Clear Cache', icon: Icons.delete),
           ],),
           ),
           /*third portion end here*/
           SizedBox(height:20,),
           /*forth portion start here*/
           Text('Other',style: TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.w400,
             fontSize: 15,
           ),),
           /*forth portion end here*/
           const SizedBox(height: 20,),
           /*last portion start here*/
           Container(
             height: 150,
             width: 386,
             padding: const EdgeInsets.all(15),
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(20),
             ),
             child: Column(children: [
               IconAndTextWidget(txt1: 'How to Download', icon: Icons.download),
               IconAndTextWidget(txt1: 'Rate Us', icon: Icons.rate_review),
             ],),
           ),
           /*last portion end here*/
       ],),
     ),
      ),
   bottomNavigationBar: Container(
     height: 70,
     padding: const EdgeInsets.all(10),
     decoration: BoxDecoration(
       color: Colors.black,
       borderRadius: BorderRadius.only(
         topLeft: Radius.circular(20),
         topRight: Radius.circular(20),
       ),
     ),
   child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
     IconButton(onPressed: (){
       setState(() {
         value1=!value1;
       });
     }, icon: Icon(Icons.home,color:value1==false?Colors.blue:Colors.white,),),
     IconButton(onPressed: (){
       setState(() {
         value2=!value2;
       });
     }, icon: Icon(Icons.download,color:value2==false?Colors.white:Colors.blue,),),
     IconButton(onPressed: (){
       setState(() {
         value3=!value3;
       });
     }, icon: Icon(Icons.folder,color:value3==false?Colors.white:Colors.blue,),),
   ],),
   ),
    );
  }
}
/*Icon Text widget start here*/
class IconAndTextWidget extends StatelessWidget {
  final String txt1;
  final String?txt2;
  final IconData icon;
  const IconAndTextWidget({super.key,required this.txt1,this.txt2='',required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Icon(icon,color: Colors.white,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(txt1,style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xffFFFFFF),
            fontSize: 16,
          ),),
          Text('$txt2',style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Color(0xffFFFFFF),
            fontSize: 13,
          ),),
        ],
      ),
    ],);
  }
}

/*Icon Text widget end here*/