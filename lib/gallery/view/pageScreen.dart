import 'package:flutter/material.dart';
import 'package:gallery_ui/gallery/provider/gallery_propider.dart';
import 'package:provider/provider.dart';

class PagePhotos extends StatefulWidget {
  const PagePhotos({Key? key}) : super(key: key);

  @override
  State<PagePhotos> createState() => _PagePhotosState();
}

class _PagePhotosState extends State<PagePhotos> {
  GalleryProvider? providerTrue;
  GalleryProvider? providerFalse;
  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<GalleryProvider>(context, listen: false);
    providerTrue = Provider.of<GalleryProvider>(context, listen: true);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    PageController mykey =PageController(initialPage: index);
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Center(
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },icon: Icon(Icons.arrow_back,color: Colors.white,size: 20,),
          ),
        ),
        actions: [
          Icon(Icons.cloud_upload_rounded,size: 20,color: Colors.white,),
          SizedBox(width: 20),
          Icon(Icons.star_border,size: 20,color: Colors.white,),
          SizedBox(width: 20),
          Icon(Icons.more_vert,size: 20,color: Colors.white,),
          SizedBox(width: 10),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(letterSpacing: 1),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.share),label: "Share"),
          BottomNavigationBarItem(icon: Icon(Icons.tune),label: "Edit"),
          BottomNavigationBarItem(icon: Icon(Icons.center_focus_strong),label: "Lens"),
          BottomNavigationBarItem(icon: Icon(Icons.delete),label: "Delete"),
        ],
      ),
      body: PageView.builder(
        controller: mykey,
        itemBuilder: (context, index) {
          return Image.asset("${providerFalse!.myphotos[index]}");
        },itemCount: providerFalse!.myphotos.length,
      ),
    ));
  }
}