import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({Key? key}) : super(key: key);

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Column(
        children: [
             Center(
                  child: CircleAvatar(
                    radius: 70,
                        backgroundImage: AssetImage("assets/images/download.png"),
                      ),
                ),
          Text("Name:- Savaliya Parth "),
          SizedBox(height: 10),
          Text("Std:-College (F.Y)"),
          SizedBox(height: 10),
          Text("Contact no :- 8320742165 "),
          SizedBox(height: 10),
          Text("Hobby:- Cricket"),
          SizedBox(height: 10),
          Text("Intreast:- Coding  "),
        ],
      ),
      ),
    );
  }
}
