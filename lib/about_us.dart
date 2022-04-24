import 'package:flutter/material.dart';
import 'package:sinocrack/Navbar/Navbar.dart';
import 'package:countup/countup.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Column(children: [
            Stack(
              children: [
                //  Navbar(),
                Opacity(
                  opacity: 0.8,
                  child: Container(
                    color: const Color.fromARGB(255, 51, 49, 49),
                    // child: Image.network(
                    //   'https://www.nortonrosefulbright.com/-/media/images/nrf/nrfweb/knowledge/publications/deliver-capture-hero.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 3.2,
                    // fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Navbar(
                    selectedIndex: 2,
                  ),
                ),
                const Positioned(
                  top: 120,
                  left: 140,
                  child: Text(
                    'About Us',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 200,
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      width: 500,
                      height: MediaQuery.of(context).size.height * 0.6,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('About SinoCrack',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            Color.fromARGB(255, 62, 62, 62))),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Read More',
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                    foregroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    elevation: MaterialStateProperty.all(0),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Image.network(
                            'https://i0.wp.com/ideawallpapers.com/wp-content/uploads/2022/02/c4.jpg',
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.4,
                            fit: BoxFit.cover,
                          )
                        ],
                      )),
                ),

                Positioned(
                  top: MediaQuery.of(context).size.height * 0.6 + 300,
                  left: MediaQuery.of(context).size.width * 0.5 - 100,
                  child: const Text(
                    'Our Achievement',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.6 + 350,
                  left: MediaQuery.of(context).size.width * 0.5 - 100,
                  child: Column(
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
                Positioned(
                    top: MediaQuery.of(context).size.height * 2.2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      width: 500,
                      height: MediaQuery.of(context).size.height * 0.6,
                      color: Colors.white,
                      child: Row(children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('Our  Skills',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black)),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 62, 62, 62))),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ]),
                    )),
                Positioned(
                    top: MediaQuery.of(context).size.height * 2.9,
                    left: 60,
                    child: Column(
                      children: [
                        const SizedBox(),
                        const Text('CONNECT WITH US',
                            style: const TextStyle(
                                fontSize: 30, color: Colors.white)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text('Do you have any questions?',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.white)),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Read More',
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            elevation: MaterialStateProperty.all(0),
                            minimumSize: MaterialStateProperty.all(Size(
                                MediaQuery.of(context).size.width * 0.7,
                                MediaQuery.of(context).size.height * 0.1)),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ])
        ]));
  }
}

class Count extends StatelessWidget {
  final String title;
  final double count;
  final IconData icon;
  const Count({
    Key? key,
    required this.title,
    required this.count,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 60,
        ),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor:
                  const Color.fromARGB(255, 34, 34, 34).withOpacity(0.5),
              radius: 30,
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Countup(
              begin: 0,
              end: count,
              duration: const Duration(seconds: 3),
              separator: ',',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
