import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Widget child;
  const SplashScreen({super.key,required this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000)).then((value){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => widget.child), (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*first portion start here*/
          Container(
            height: 105,
            width: 110,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(40),
                color: Colors.black26,
                ),
           child: Center(
             child: Image.asset('assets/img.png'),
           ),
            ),
       /*first portion end here*/
          /*second portion start here*/
          Text('Video Downloader',style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 32,
            color: Color(0xffFFFFFF),
          ),),
          /*second portion end here*/
          /*third portion start here*/
          Text('Fast Download',style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Color(0xffFFFFFF),
          ),),
          /*third portion end here*/
        ],
      ),
      ),
    );
  }
}
