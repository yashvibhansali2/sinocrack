import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:lottie/lottie.dart';

import 'package:sinocrack/aboutus.dart';
import 'package:sinocrack/blog.dart';
import 'package:sinocrack/blog_details.dart';
import 'package:sinocrack/count.dart';
import 'package:sinocrack/gallery.dart';
import 'package:sinocrack/review_container.dart';

import 'package:sinocrack/widgets/bottom_bar.dart';
import 'package:sinocrack/widgets/featured_heading.dart';
import 'package:sinocrack/widgets/featured_tiles.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:sinocrack/Navbar/Navbar.dart';
import 'package:sinocrack/LandingPage/LandingPage.dart';
import 'package:sinocrack/contact_us.dart';

import 'benefits.dart';
import 'how_to_use.dart/drilling&mixing.dart';
import 'how_to_use.dart/usage_notes.dart';

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
      home: const Drilling(),
      onGenerateRoute: (route) {
        switch (route.name) {
          case MyHomePage.rouetName:
            return MaterialPageRoute(builder: (context) => const MyHomePage());
          case BlogDetails.routeName:
            Map args = route.arguments as Map;
            return MaterialPageRoute(
                builder: (context) => BlogDetails(args: args));
          default:
            return MaterialPageRoute(builder: (context) => const Scaffold());
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
              SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 50,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            color: Colors.white,
                            height: 300,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3.5,
                            color: Colors.black,
                            height: 400,
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Count(
                      icon: Icons.camera_alt_outlined,
                      count: 870,
                      title: 'Project Done',
                    ),
                    Count(
                      icon: Icons.people_outline,
                      count: 870,
                      title: 'Project Done',
                    ),
                    Count(
                      icon: Icons.video_camera_back_outlined,
                      count: 870,
                      title: 'Project Done',
                    ),
                    Count(
                        title: 'Happy Clients',
                        count: 2000,
                        icon: Icons.outbond_outlined),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 50,
                          right: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            color: Colors.white,
                            height: 300,
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3.5,
                            color: Colors.black,
                            height: 400,
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(height: 80),
              Container(
                //height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width / 10,
                              color: Colors.black,
                              height: 2),
                          const Text('        Testimonials        ',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          Container(
                              width: MediaQuery.of(context).size.width / 10,
                              color: Colors.black,
                              height: 2),
                        ],
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: const Text(
                            'What our esteemed customers have to say about us and our product Sinocrack. We build long term relationships with our customer and change the way they do their business, and below is a testimonial to this.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return const ReviewContainer();
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              const BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
