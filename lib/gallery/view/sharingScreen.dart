import 'package:flutter/material.dart';
import 'package:gallery_ui/gallery/provider/gallery_propider.dart';
import 'package:provider/provider.dart';

class SharingScreen extends StatefulWidget {
  const SharingScreen({Key? key}) : super(key: key);

  @override
  State<SharingScreen> createState() => _SharingScreenState();
}

class _SharingScreenState extends State<SharingScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 40,width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),color: Colors.blue.shade50
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.book_rounded,color: Colors.black,size: 15,),
                        SizedBox(width: 10),
                        Text("Create shared album",style: TextStyle(color: Colors.black,fontFamily: 'popins',fontSize: 11,letterSpacing: 1),),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,width: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),color: Colors.blue.shade50
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.share,color: Colors.black,size: 15,),
                        SizedBox(width: 10),
                        Text("Share with partners",style: TextStyle(color: Colors.black,fontFamily: 'popins',fontSize: 12,letterSpacing: 1),),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Albums and Memories",
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
              Text(
                "Conversations",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontFamily: 'popins',
                    fontSize: 17),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("${providerFalse!.myphotos[10]}"),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Kalariya Khushi",
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontFamily: 'popins',
                        fontSize: 17),
                  ),
                  Spacer(),
                  Container(
                    height: 40,width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                        child: Image.asset("${providerFalse!.myphotos[11]}",fit: BoxFit.cover,)),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("${providerFalse!.myphotos[12]}"),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Kalariya Khushi",
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontFamily: 'popins',
                        fontSize: 17),
                  ),
                  Spacer(),
                  Container(
                    height: 40,width: 40,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("${providerFalse!.myphotos[13]}",fit: BoxFit.cover,)),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("${providerFalse!.myphotos[14]}"),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Kalariya Harsukhbhai",
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontFamily: 'popins',
                        fontSize: 17),
                  ),
                  Spacer(),
                  Container(
                    height: 40,width: 40,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset("${providerFalse!.myphotos[15]}",fit: BoxFit.cover,)),
                  )
                ],
              ),
            ],
          ),
        )
      ),
    ));
  }
}
