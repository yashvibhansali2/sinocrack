import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:lottie/lottie.dart';
import 'package:sinocrack/about_us.dart';
import 'package:sinocrack/blog.dart';
import 'package:sinocrack/blog_details.dart';

import 'package:sinocrack/widgets/bottom_bar.dart';
import 'package:sinocrack/widgets/featured_heading.dart';
import 'package:sinocrack/widgets/featured_tiles.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:sinocrack/Navbar/Navbar.dart';
import 'package:sinocrack/LandingPage/LandingPage.dart';
import 'package:sinocrack/contact_us.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const Map<int, Color> color = {
    50: Color.fromRGBO(109, 116, 124, .1),
    100: Color.fromRGBO(109, 116, 124, .2),
    200: Color.fromRGBO(109, 116, 124, .3),
    300: Color.fromRGBO(109, 116, 124, .4),
    400: Color.fromRGBO(109, 116, 124, .5),
    500: Color.fromRGBO(109, 116, 124, .6),
    600: Color.fromRGBO(109, 116, 124, 0.698),
    700: Color.fromRGBO(109, 116, 124, .8),
    800: Color.fromRGBO(109, 116, 124, .9),
    900: Color.fromRGBO(109, 116, 124, 1),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF6D747C, color),
      ),
      home: MyHomePage(),
      onGenerateRoute: (route) {
        switch (route.name) {
          case MyHomePage.rouetName:
            return MaterialPageRoute(builder: (context) => MyHomePage());
          case BlogDetails.routeName:
            Map args = route.arguments as Map;
            return MaterialPageRoute(
                builder: (context) => BlogDetails(args: args));
          default:
            return MaterialPageRoute(builder: (context) => Scaffold());
        }
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const rouetName = '/home';

  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Color(0xB16D747C),
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                child: LandingPage(),
              ),
              Container(
                // color: Colors.white,
                child: Lottie.asset(
                  'assets/lottie/home_ani.json',
                  reverse: true,

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .8,
                  //  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.9,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Column(
                    children: <Widget>[
                      const Text('Reviews from ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      const Text('TRUSTPILOT',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 50),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin:
                                  const EdgeInsets.only(right: 20, left: 20),
                              height: 100,
                              width: 200,
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemSize: 20,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(
                                          horizontal: 3.0, vertical: 2.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Sino Crack',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Sino Crack is a cracker that is used to crack android apps',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
