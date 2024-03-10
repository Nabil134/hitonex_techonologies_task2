import 'package:flutter/material.dart';
import 'package:project/view/main_screen/nav_pages/settings_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
     child: Column(
       children: [
         SizedBox(height: 20,),
         /*first portion start here*/
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
           Container(
             margin: const EdgeInsets.only(left: 5),
             height: 40,
             width: 40,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               color: Color(0xff282B30),
             ),
             child: Center(
               child: Container(
                 width: 18,
                 height: 18,
                 padding: const EdgeInsets.only(left: 3,bottom: 3),
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.white,
                     width: 2,
                   ),
                   borderRadius: BorderRadius.circular(2),
                 ),
                 child: Text('1',style: TextStyle(color: Colors.white),),
               ),
             ),
           ),
          Row(children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff282B30),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(icon: Icon(Icons.settings,color: Colors.white,),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>SettingPage()));
                },
              ),
            ),
            SizedBox(width: 5,),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color(0xff282B30),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.more_vert,color: Colors.white,),
            ),
            SizedBox(width: 5,),

          ],),

         ],),
      /*first portion end here*/
         const SizedBox(height: 20,),
         /*second portion and Search Input start here*/
        SearchInput(),
         /*second portion and Search input end here*/
         SizedBox(height: 20,),
         /*third portion start here*/
         GestureDetector(
           onTap: (){
showModalBottomSheet(context: context, builder: (BuildContext context){
  return BottomSheetModel();

});
           },
           child: Container(
             height: 215,
             width: 356,
             padding: const EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Color(0xff282B30),
               borderRadius: BorderRadius.circular(40),
             ),
        child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextImage(text: "Facebook",img: 'Faceboo.png',),
                TextImage(text: "Twitter",img: 'twitter.png',),
                TextImage(text: "Instagram",img: 'Instagram.png',),
               TextImage(text: "Vimeo",img: 'vimeo.png',),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextImage(text: "Dailymotion",img: 'dailymotion.png',),
                TextImage(text: "Google",img: 'google.png',),
                TextImage(text: "Tiktok",img: 'tiktok.png',),
                TextImage(text: "Apps",img: 'Layer 2.png',),
              ],
            ),
        ],),
           ),
         ),
         /*third portion end here*/
       ],
     ),
      ),
    );
  }
}
/*SearchInput and second portion start here*/
class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 48,
      width: 358,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.15),
          ),
        ],
      ),
      child: TextField(
        onChanged: (value){},
        decoration:const InputDecoration(
          prefixIcon: Icon(Icons.search,color: Color(0xff686A70),),
          filled: true,
          hintText: "Search or enter url",
          hintStyle: TextStyle(color: Color(0xff686A70)),
          fillColor: Color(0xff27292D),
          contentPadding:  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40.0),),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff27292D),width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0),),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff27292D),width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0),),
          ),

        ),
      ),
    );
  }
}

/*SearchInput and second portion end here*/
/*TextImage start here*/
class TextImage extends StatelessWidget {
  final String text;
  final String img;
  const TextImage({Key? key, required this.text, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/$img'),
        Text(text, style: TextStyle(
          color: Color(0xffFFFFFF),
          fontWeight: FontWeight.w400,
        ),),

      ],
    );
  }
}
/*BottomSheetModel start here*/
class BottomSheetModel extends StatefulWidget {


  @override
  State<BottomSheetModel> createState() => _BottomSheetModelState();
}

class _BottomSheetModelState extends State<BottomSheetModel> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 450,
        width: 428,
        decoration: BoxDecoration(
          color:Color(0xff282B30),
          borderRadius: BorderRadius.circular(20),
        ),
child: Column(children: [

  Icon(Icons.arrow_circle_down_sharp,color: Color(0xff686A70),),
  const SizedBox(height: 20,),
  Text('Video Quality',style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: Color(0xffFFFFFF),
  ),),
const SizedBox(height: 20,),
  Row(children: [
      Image.asset('assets/Rectangle 47.png'),
      SizedBox(width: 5,),
      Expanded(
        child: Text('Lorem ipsum dolor sit amet consectetur. Risus proin vulputate quam faucibus vestibulum ........',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
  ],),
  const SizedBox(height: 10,),

  Column(children: [

      RadioListTile<int>(
        activeColor: Color(0xff1EC6FD),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('High (1080p)',style: TextStyle(color: selectedValue==1?Color(0xff1EC6FD):Colors.white),),
            Text('300MB',style: TextStyle(color: selectedValue==1?Color(0xff1EC6FD):Colors.white),),
          ],
        ),
        value: 1,
        groupValue: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
      RadioListTile<int>(
        activeColor: Color(0xff1EC6FD),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Medium (720p)',style: TextStyle(color: selectedValue==2?Color(0xff1EC6FD):Colors.white),),
            Text('200MB',style: TextStyle(color: selectedValue==2?Color(0xff1EC6FD):Colors.white),),
          ],
        ),
        value: 2,
        groupValue: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
      RadioListTile<int>(
        activeColor: Color(0xff1EC6FD),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Low (480p)',style: TextStyle(color: selectedValue==3?Color(0xff1EC6FD):Colors.white),),
            Text('100MB',style: TextStyle(color: selectedValue==3?Color(0xff1EC6FD):Colors.white),),
          ],
        ),
        value: 3,
        groupValue: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
  ],),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  OutlinedButton(
    child: Text('Cancel'),
    style: OutlinedButton.styleFrom(

        primary: Colors.white,
        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10),),),
      side: BorderSide(color: Color(0xff1EC6FD),),
    ),
    onPressed: () {},
  ),
    ElevatedButton(
      child: Text(
        'Download',
        style: TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
          Size(125, 32),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xff1EC6FD),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      onPressed: () {},
    ),
],),
],),
      ),
    );
  }
}

/*BottomSheetModel end here*/
