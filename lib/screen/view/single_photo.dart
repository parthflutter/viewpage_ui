import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viewpage_ui/screen/provider/view_provider.dart';

class Single_photo extends StatefulWidget {
  const Single_photo({Key? key}) : super(key: key);

  @override
  State<Single_photo> createState() => _Single_photoState();
}

class _Single_photoState extends State<Single_photo> {
  ViewProvider? viewProvider, viewProvidert;

  @override
  Widget build(BuildContext context) {
    int i1 = ModalRoute.of(context)!.settings.arguments as int;
    viewProvider = Provider.of<ViewProvider>(context, listen: false);
    viewProvidert = Provider.of<ViewProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          itemCount: viewProvider!.screen.length,
          controller: PageController(initialPage: i1),
          itemBuilder: (context, index) {
            return Container(
              height: 250,
              width: double.infinity,
              child: Image.asset("${viewProvider!.screen[index]}"),
            );
          },
        ),
      ),
    );
  }
}
