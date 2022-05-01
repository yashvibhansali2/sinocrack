import 'package:flutter/material.dart';
import 'package:sinocrack/widgets/bottom_bar.dart';

import 'Navbar/Navbar.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          color: Colors.black.withOpacity(0.9),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
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
                  "About Us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 80.0,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .6,
              padding:
                  const EdgeInsets.symmetric(horizontal: 300, vertical: 100),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('MEET OUR TEAM',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      )),
                  Text('We’re a Digital Experience Development Agency',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      )),
                  Text(
                      'Our team has many skills so we’re able to offer a wide array of services. Far away, behind the word mountains, far from the countries Vokalia.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      )),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 1.08,
                color: Colors.grey[100],
                child: Row(
                  children: [
                    Image.asset('assets/test2.jpeg',
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 3),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: const EdgeInsets.all(100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('MEET OUR TEAM',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .05,
                          ),
                          const Text(
                              'We’re a Digital Experience Development Agency',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .05,
                          ),
                          const Text(
                              'SINO-CRACK has been used safety with great results by many contractors and homeowners all over the world. The safe use of the product depends on following instructions, and wearing safety goggles at all times. Although non-toxic, SINO-CRACK is caustic, and can cause severe eye injury if splashed into the eyes while mixing or pouring.',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  height: 1.5)),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.08),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(40),
                                    width:
                                        MediaQuery.of(context).size.width * .27,
                                    height:
                                        MediaQuery.of(context).size.height * .4,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 215, 215, 215),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(Icons.favorite_border_outlined,
                                            color: Colors.blueGrey, size: 80),
                                        Text('Branding',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                        Text(
                                            'We’re full service which means we’ve got you covered on design and content right through to digital.',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.blueGrey,
                                              wordSpacing: 1.2,
                                            )),
                                      ],
                                    )),
                                Container(
                                    padding: const EdgeInsets.all(40),
                                    width:
                                        MediaQuery.of(context).size.width * .27,
                                    height:
                                        MediaQuery.of(context).size.height * .4,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 215, 215, 215),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(Icons.bar_chart_outlined,
                                            color: Colors.blueGrey, size: 80),
                                        Text('Marketing',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            )),
                                        Text(
                                            'We’re full service which means we’ve got you covered on design and content right through to digital.',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.blueGrey,
                                              wordSpacing: 1.2,
                                            )),
                                      ],
                                    ))
                              ])
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              height: MediaQuery.of(context).size.height * .8,
              color: Colors.white,
              padding: const EdgeInsets.all(80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                              'The chemical reaction of SINO-CRACK and water generates heat. ',
                              style: TextStyle(
                                fontSize: 25,
                                height: 1.5,
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(
                              'The chemical reaction of SINO-CRACK and water generates heat. When this reaction takes place too quickly, the temperature goes above the boiling point of water before all the water has chemically combined with the SINO-CRACK. This can result in a steam-driven explosion which blows the SINO-CRACK from the hole with sudden force.',
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.5,
                                color: Colors.black,
                              )),
                        ]),
                  ),
                  Image.network(
                      'https://i0.wp.com/ideawallpapers.com/wp-content/uploads/2022/02/c4.jpg')
                ],
              ),
            ),
            const BottomBar()
          ],
        ),
      ]),
    );
  }
}
