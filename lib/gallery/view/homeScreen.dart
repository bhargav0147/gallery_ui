import 'package:flutter/material.dart';
import 'package:gallery_ui/gallery/provider/gallery_propider.dart';
import 'package:gallery_ui/gallery/view/libraryScreen.dart';
import 'package:gallery_ui/gallery/view/pageScreen.dart';
import 'package:gallery_ui/gallery/view/photoScreen.dart';
import 'package:gallery_ui/gallery/view/searchScreen.dart';
import 'package:gallery_ui/gallery/view/sharingScreen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GalleryProvider? providerTrue;
  GalleryProvider? providerFalse;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<GalleryProvider>(context, listen: false);
    providerTrue = Provider.of<GalleryProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Center(
                child: Container(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 40),
                      Text(
                        "G",
                        style:
                            TextStyle(color: Colors.blue, fontFamily: 'popins'),
                      ),
                      Text(
                        "o",
                        style:
                            TextStyle(color: Colors.red, fontFamily: 'popins'),
                      ),
                      Text(
                        "o",
                        style: TextStyle(
                            color: Colors.yellow, fontFamily: 'popins'),
                      ),
                      Text(
                        "g",
                        style:
                            TextStyle(color: Colors.blue, fontFamily: 'popins'),
                      ),
                      Text(
                        "l",
                        style: TextStyle(
                            color: Colors.green, fontFamily: 'popins'),
                      ),
                      Text(
                        "e",
                        style:
                            TextStyle(color: Colors.red, fontFamily: 'popins'),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "photos",
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'popins',
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                CircleAvatar(
                  radius: 17,
                  backgroundImage: AssetImage("assets/images/person.jpg"),
                ),
                SizedBox(width: 10),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.blue.shade50,
              fixedColor: Colors.black,
              unselectedItemColor: Colors.black,
              selectedLabelStyle: TextStyle(letterSpacing: 1),
              currentIndex: providerTrue!.body,
              onTap: (value) {
                providerFalse!.chngebody(value);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.photo), label: "Photos"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.group), label: "Sharing"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.equalizer), label: "Library"),
              ],
            ),
            body: providerTrue!.body == 0
                ? PhotoScreen()
                : providerTrue!.body == 1
                    ? SearchScreen()
                    : providerTrue!.body == 2
                        ? SharingScreen()
                        : LibraryScreen()));
  }
}
