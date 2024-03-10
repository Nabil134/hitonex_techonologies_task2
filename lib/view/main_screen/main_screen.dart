import 'package:flutter/material.dart';

import 'nav_pages/download/download_pages.dart';
import 'nav_pages/file/file_pages.dart';
import 'nav_pages/home/home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
   const  HomePage(),
  const  DownloadPage(),
   const FilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        IconBottomBar(
          onTap: (){
            setState(() {
              _selectedIndex=0;
            });
          },
            icon:Icons.home, selected: _selectedIndex==0),
        IconBottomBar(
            onTap: (){
              setState(() {
                _selectedIndex=1;
              });

            },
            icon:Icons.download, selected: _selectedIndex==1),
        IconBottomBar(
            onTap: (){
              setState(() {
                _selectedIndex=2;
              });

            },
            icon:Icons.folder, selected: _selectedIndex==2),
      ],),
      ),
    body: _pages.elementAt(_selectedIndex),
    );
  }
}
/*IconBottomBar start here*/
class IconBottomBar extends StatelessWidget {
  final IconData icon;
  final bool selected;
  final Function() onTap;
  const IconBottomBar({super.key,required this.icon,required this.selected,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
IconButton(onPressed: onTap, icon: Icon(icon),
  color: selected?Color(0xff1EC8FF):Colors.white,
),
      ],
    );
  }
}

/*IconBottomBar end here*/