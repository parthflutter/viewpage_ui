import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewpage_ui/screen/provider/view_provider.dart';
import 'package:viewpage_ui/screen/provider/view_provider.dart';
import 'package:viewpage_ui/screen/provider/view_provider.dart';

import '../provider/view_provider.dart';
import '../provider/view_provider.dart';
import '../provider/view_provider.dart';
import '../provider/view_provider.dart';

class Gallery_screen extends StatefulWidget {
  const Gallery_screen({Key? key}) : super(key: key);

  @override
  State<Gallery_screen> createState() => _Gallery_screenState();
}

class _Gallery_screenState extends State<Gallery_screen> {
  ViewProvider?viewProvider,viewProvidert;
  @override
  Widget build(BuildContext context) {
    viewProvider = Provider.of<ViewProvider>(context,listen: false);
    viewProvidert = Provider.of<ViewProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
        centerTitle: true,
      ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: viewProvider!.screen.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'Single_photo',arguments: index);
                    },
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                      ),
                      child: Image.asset("${viewProvider!.screen[index]}")
                    ),
                  ),
                );


              },
              ),
            ),
        ],
        ),
    ),
    );
  }
}
