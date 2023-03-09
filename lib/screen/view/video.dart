import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/view_provider.dart';

class Video_screen extends StatefulWidget {
  const Video_screen({Key? key}) : super(key: key);

  @override
  State<Video_screen> createState() => _Video_screenState();
}

class _Video_screenState extends State<Video_screen> {
  ViewProvider?viewProvider,viewProvidert;
  @override
  Widget build(BuildContext context) {
    viewProvider = Provider.of<ViewProvider>(context,listen: false);
    viewProvidert = Provider.of<ViewProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Video"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                itemCount: viewProvider!.screen.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(child: Container(
                                child: Image.asset("${viewProvider!.screen[index]}",
                                fit: BoxFit.fill))),
                            Container(
                                height: 20,
                                child: Icon(Icons.play_arrow,
                                  color: Colors.white,)),

                          ],
                        )
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
