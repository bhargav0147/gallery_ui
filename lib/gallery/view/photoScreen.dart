import 'package:flutter/material.dart';
import 'package:gallery_ui/gallery/provider/gallery_propider.dart';
import 'package:provider/provider.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  GalleryProvider? providerTrue;
  GalleryProvider? providerFalse;
  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<GalleryProvider>(context, listen: false);
    providerTrue = Provider.of<GalleryProvider>(context, listen: true);
    return SafeArea(child: Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Yesterday",
                    style: TextStyle(
                        color: Colors.black, letterSpacing: 1, fontSize: 15),
                  ),
                  Spacer(),
                  Icon(
                    Icons.check_circle_outline,
                    size: 20,
                  )
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 730,
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 2,crossAxisSpacing: 2),
                    itemBuilder: (context, index) => myphotos(index),itemCount: providerFalse!.myphotos.length),
              )
            ],
          ),
        ),
      ),
    ));
  }
  Widget myphotos(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'page',arguments: index);
      },
      child: Container(
        height: 100,width: 100,
        child: Image.asset("${providerFalse!.myphotos[index]}",fit: BoxFit.fill,),
      ),
    );
  }
}
