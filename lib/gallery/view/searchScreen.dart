import 'package:flutter/material.dart';
import 'package:gallery_ui/gallery/provider/gallery_propider.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  GalleryProvider? providerTrue;
  GalleryProvider? providerFalse;

  @override
  Widget build(BuildContext context) {
    providerFalse = Provider.of<GalleryProvider>(context, listen: false);
    providerTrue = Provider.of<GalleryProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Search "Birthday"',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                          fontFamily: 'popins',
                          letterSpacing: 1),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.5),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(
                      Icons.cloud_upload_outlined,
                      color: Colors.blue,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Turn on backup to improve search',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black54,
                          fontFamily: 'popins',
                          letterSpacing: 1),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "People",
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
                height: 90,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 90,
                        width: 90,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50, shape: BoxShape.circle),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'page',arguments: index);
                          },
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("${providerFalse!.myphotos[index]}"),
                            radius: 70,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      );
                    },
                    itemCount: providerFalse!.myphotos.length),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Places",
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
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 120,width: 120,margin: EdgeInsets.symmetric(horizontal: 5),
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
                    "Documents",
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
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 120,width: 120,margin: EdgeInsets.symmetric(horizontal: 5),
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
                    "Things",
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
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          height: 120,width: 120,margin: EdgeInsets.symmetric(horizontal: 5),
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
            ],
          ),
        ),
      )),
    ));
  }
}
