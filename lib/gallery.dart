import 'package:flutter/material.dart';
import 'package:sinocrack/widgets/bottom_bar.dart';

import 'Navbar/Navbar.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black.withOpacity(0.9),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width,
        child: Opacity(
          opacity: 0.5,
          child: Image.network(
              'https://i0.wp.com/ideawallpapers.com/wp-content/uploads/2022/02/c4.jpg',
              fit: BoxFit.fill),
        ),
      ),
      ListView(
        children: [
          const Navbar(selectedIndex: 0),
          Padding(
            padding: const EdgeInsets.only(top: 200.0, bottom: 120),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              child: const Text(
                "GALLERY",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 3,
              padding: const EdgeInsets.all(100),
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * .5,
                    color: Colors.white,
                  ),
                  // Image.asset(
                  //   'assets/test2.jpeg',
                  //   width: MediaQuery.of(context).size.width * 0.4,
                  //   // height: MediaQuery.of(context).size.height * 3
                  // ),
                  Column(
                    children: [
                      Image.network(
                        'https://i0.wp.com/ideawallpapers.com/wp-content/uploads/2022/02/c4.jpg',
                        width: MediaQuery.of(context).size.width * 0.3,
                        // height: MediaQuery.of(context).size.height * 1.5
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .05),
                      Image.network(
                        'https://i0.wp.com/ideawallpapers.com/wp-content/uploads/2022/02/c4.jpg',
                        width: MediaQuery.of(context).size.width * 0.3,
                        // height: MediaQuery.of(context).size.height * 1.5
                      ),
                    ],
                  )
                ],
              )),
          const BottomBar()
        ],
      ),
    ]));
  }
}
