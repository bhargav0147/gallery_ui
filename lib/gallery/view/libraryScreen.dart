import 'package:flutter/material.dart';
import 'package:gallery_ui/gallery/provider/gallery_propider.dart';
import 'package:provider/provider.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
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
                  Container(
                    height: 55,width: 185,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 15),
                          Icon(Icons.star_border_outlined,size:20,color: Colors.blue,),
                          SizedBox(width: 15),
                          Text("Favorites",style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'popins',
                              fontSize: 15),)
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 55,width: 185,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 15),
                          Icon(Icons.book_outlined,size:20,color: Colors.blue,),
                          SizedBox(width: 15),
                          Text("Utilities",style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'popins',
                              fontSize: 15),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 55,width: 185,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 15),
                          Icon(Icons.archive_outlined,size:20,color: Colors.blue,),
                          SizedBox(width: 15),
                          Text("Archive",style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'popins',
                              fontSize: 15),)
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 55,width: 185,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 15),
                          Icon(Icons.delete,size:20,color: Colors.blue,),
                          SizedBox(width: 15),
                          Text("Trash",style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontFamily: 'popins',
                              fontSize: 15),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Photos on device",
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontFamily: 'popins',
                        fontSize: 17),
                  ),
                  Spacer(),
                  Text(
                    "View all",
                    style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 1,
                        fontFamily: 'popins',
                        fontSize: 17),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 150,width: 150,margin: EdgeInsets.symmetric(horizontal: 5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'page',arguments: index);
                                  },
                                  child: Image.asset("${providerFalse!.myphotos[index]}",fit: BoxFit.cover,))));
                    },
                    itemCount: providerFalse!.myphotos.length),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Albums",
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontFamily: 'popins',
                        fontSize: 17),
                  ),
                  Spacer(),
                  Icon(Icons.compare_arrows_outlined,size:20,color: Colors.blue,),
                  SizedBox(width: 10),
                  Text(
                    "Most recent photo",
                    style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 1,
                        fontFamily: 'popins',
                        fontSize: 17),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 355,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 150,width: 150,margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'page',arguments: index);
                                  },
                                  child: Image.asset("${providerFalse!.myphotos[index]}",fit: BoxFit.cover,))));
                    },
                    itemCount: providerFalse!.myphotos.length),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
