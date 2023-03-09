import 'package:flutter/material.dart';

class ViewProvider extends ChangeNotifier {
  int i = 0;

  List screen = [
    "assets/images/20211128_211031.jpg",
    "assets/images/20220315_080347.jpg",
    "assets/images/20220819_235835.jpg",
    "assets/images/Anime_11002.jpeg",
    "assets/images/Anime_11810.jpeg",
    "assets/images/Anime_12198.jpeg",
   "assets/images/c5.j[pg.jpg",
    "assets/images/c6.jpg",
    "assets/images/c7.jpg",
    "assets/images/download.png",
    "assets/images/download (1).jpeg",
    "assets/images/caspar-camille-rubin-fPkvU7RDmCo-unsplash.jpg",
  "assets/images/caspar-camille-rubin-fPkvU7RDmCo-unsplash.jpg",
    "assets/images/HDgallery Radheshyam UHD Images  (7).jpeg",
    "assets/images/HDgallery Radheshyam 26.jpeg",
    "assets/images/HDgallery RadheShyam  30.jpeg",
    "assets/images/images.jpeg",
    "assets/images/IMG_0400-1.jpg",
    "assets/images/IMG_8566.jpg",
    "assets/images/IMG_20220208_184319_480-01.jpeg",
    "assets/images/IMG_20220813_100949_954.jpg",
  ];

  void selectIndex(int value) {
    i = value;
    notifyListeners();
  }
}
