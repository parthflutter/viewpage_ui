

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewpage_ui/screen/provider/view_provider.dart';
import 'package:viewpage_ui/screen/view/gallery.dart';
import 'package:viewpage_ui/screen/view/profile.dart';
import 'package:viewpage_ui/screen/view/single_photo.dart';
import 'package:viewpage_ui/screen/view/video.dart';
import 'package:viewpage_ui/screen/view/viewpage.dart';

void main() {
  runApp(
    MultiProvider(providers:  [
        ChangeNotifierProvider(
        create: (context) => ViewProvider(),
  ),
      MultiProvider(providers: [
        ChangeNotifierProvider(
            create: (context)=> ViewProvider(),
        ),
        MultiProvider(providers: [
          ChangeNotifierProvider(
            create: (context)=>ViewProvider(),),
        ])
      ],
      ),
    ],

    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>view_page(),
        'Gallery_screen':(context)=>Gallery_screen(),
        'Video_screen':(context)=>Video_screen(),
        'Profile_screen':(context)=>Profile_screen(),
        'Single_photo':(context)=>Single_photo(),
      },
    ),
  ),
  );
}