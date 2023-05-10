import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gallery_ui/gallery/provider/gallery_propider.dart';
import 'package:gallery_ui/gallery/view/homeScreen.dart';
import 'package:gallery_ui/gallery/view/pageScreen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(DevicePreview(
    builder: (context) => MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GalleryProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'page':(context) => PagePhotos(),
        },
      ),
    ),
  ));
}