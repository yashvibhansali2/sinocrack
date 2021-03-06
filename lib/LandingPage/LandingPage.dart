import 'package:flutter/material.dart';
import 'package:sinocrack/Navbar/Navbar.dart';

class LandingPage extends StatelessWidget {
  final List<Map> iconData = [
    {'icon': Icons.music_off_outlined, 'text': 'No Noise'},
    {'icon': Icons.vibration, 'text': 'No Vibration'},
    {'icon': Icons.storm_outlined, 'text': 'No Fly Rock'},
  ];

  List<Widget> pageChildren(double width, double height) {
    return <Widget>[
      SizedBox(
        width: width,
        child: Stack(
          children: [
            SizedBox(
              width: width,
              height: height,
              child: Image.network(
                "https://thumbs.dreamstime.com/b/closeup-sand-pattern-beach-summer-backgrou-201616839.jpg",
                fit: BoxFit.cover,
                // width: width,
              ),
            ),
            SizedBox(
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Navbar(selectedIndex: 0),
                  Column(
                    children: [
                      SizedBox(
                        width: width * .5,
                        child: const Text(
                          "Sino Crack - A Non Explosive Demolition Agent",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60.0,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20.0)),
                            width: width * .5,
                            height: height * .12,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  iconData[0]['icon'],
                                  size: 40,
                                ),
                                Text(
                                  iconData[0]['text'],
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Container(
                                  width: 2,
                                  height: height * .07,
                                  color: Colors.grey,
                                ),
                                Icon(
                                  iconData[1]['icon'],
                                  size: 40,
                                ),
                                Text(
                                  iconData[1]['text'],
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Container(
                                  width: 2,
                                  height: height * .07,
                                  color: Colors.grey,
                                ),
                                Icon(
                                  iconData[2]['icon'],
                                  size: 40,
                                ),
                                Text(
                                  iconData[2]['text'],
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ],
                            )),
                      ),
                      const RotatedBox(
                        quarterTurns: 1,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 110,
                      )
                    ],
                  ),
                  const SizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(
                constraints.biggest.width, MediaQuery.of(context).size.height),
          );
        } else {
          return Column(
            children: pageChildren(
              constraints.biggest.width,
              constraints.biggest.height,
            ),
          );
        }
      },
    );
  }
}
