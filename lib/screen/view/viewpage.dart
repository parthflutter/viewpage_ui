import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewpage_ui/screen/provider/view_provider.dart';
import 'package:viewpage_ui/screen/view/profile.dart';
import 'package:viewpage_ui/screen/view/video.dart';

import 'gallery.dart';

class view_page extends StatefulWidget {
  const view_page({Key? key}) : super(key: key);

  @override
  State<view_page> createState() => _view_pageState();
}

class _view_pageState extends State<view_page> {
  ViewProvider?viewProviderTrue;
  ViewProvider?viewProviderFalse;

  List screen=[Gallery_screen(),Video_screen(),Profile_screen()];

  @override
  Widget build(BuildContext context) {
    viewProviderFalse=Provider.of<ViewProvider>(context,listen:false);
    viewProviderTrue=Provider.of<ViewProvider>(context,listen:true);
    return SafeArea(
      child: Scaffold(
      body: screen[viewProviderFalse!.i],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: viewProviderTrue!.i,
          onTap: (value){
            viewProviderFalse!.selectIndex(value);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.video_collection),label: "Video"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
        ),
    ),
    );
  }
}
