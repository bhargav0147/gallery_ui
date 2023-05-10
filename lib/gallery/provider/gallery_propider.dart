import 'package:flutter/cupertino.dart';

class GalleryProvider extends ChangeNotifier
{
  int body=0;
  void chngebody(int value)
  {
    body=value;
    notifyListeners();
  }
  List myphotos=[
    'assets/images/1.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
    'assets/images/11.jpg',
    'assets/images/12.jpg',
    'assets/images/13.jpg',
    'assets/images/14.jpg',
    'assets/images/15.jpg',
    'assets/images/16.jpg',
    'assets/images/17.jpg',
    'assets/images/18.jpg',
    'assets/images/19.jpeg',
    'assets/images/20.jpg',
    'assets/images/21.jpg',
    'assets/images/22.jpg',
    'assets/images/23.jpg',
    'assets/images/24.jpg',
    'assets/images/25.jpg',
    'assets/images/26.jpg',
    'assets/images/27.jpg',
    'assets/images/28.jpg',
    'assets/images/29.jpg',
    'assets/images/30.jpg',
    'assets/images/31.jpg',
    'assets/images/32.jpg',
    'assets/images/33.jpg',
    'assets/images/34.jpeg',
    'assets/images/35.jpg',
    'assets/images/37.jpg',
    'assets/images/38.jpg',
    'assets/images/39.jpg',
    'assets/images/40.jpg',
    'assets/images/41.jpg',
    'assets/images/42.jpg',
    'assets/images/43.jpg',
    'assets/images/44.jpg',
    'assets/images/45.jpg',
    'assets/images/46.jpg',
    'assets/images/47.jpg',
    'assets/images/48.jpg',
    'assets/images/49.jpg',
    'assets/images/50.jpg',
  ];
}