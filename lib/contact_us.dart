import 'package:flutter/material.dart';
import 'package:sinocrack/Navbar/Navbar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _messageTextController = TextEditingController();

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(const Marker(
        markerId: MarkerId('id-1'),
        position: LatLng(37.773972, -122.431297),
        infoWindow: InfoWindow(
          title: 'San Francisco',
          snippet: 'Population: 77,456,987',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  GoogleMapController? _googleMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
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
                    child: Navbar(selectedIndex: 3),
                  ),
                  const Positioned(
                    top: 120,
                    left: 140,
                    child: Text(
                      'Contact Us',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    child: Container(
                        padding:
                            const EdgeInsets.only(top: 30, left: 15, right: 15),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1.1,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Get in Touch!',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
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
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(children: const [
                                        Text('Our Location',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Jodhpur, Rajasthan',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 62, 62, 62))),
                                      ]),
                                      Column(children: const [
                                        Text('Our Contact',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('+91-123-456-7890',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 62, 62, 62))),
                                      ])
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: const EdgeInsets.all(40),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.7,
                              color: const Color.fromARGB(255, 105, 105, 105),
                              child: Column(
                                children: [
                                  reusableTextField(
                                      'Email', _emailTextController, 1),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  reusableTextField(
                                      'Name', _nameTextController, 1),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  reusableTextField(
                                      'Message', _messageTextController, 6),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Send',
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      elevation: MaterialStateProperty.all(0),
                                      minimumSize: MaterialStateProperty.all(
                                          Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.06)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Positioned(
                    top: 400,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: GoogleMap(
                          initialCameraPosition: CameraPosition(
                            target: const LatLng(37.773972, -122.431297),
                            zoom: 12,
                          ),
                          markers: _markers,
                          onMapCreated: _onMapCreated),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

TextField reusableTextField(
    String text, TextEditingController controller, int maximumLines) {
  return TextField(
    controller: controller,
    maxLines: maximumLines,
    style: const TextStyle(
      color: Colors.white70,
    ),
    decoration: InputDecoration(
      labelText: text,
      labelStyle: const TextStyle(
        color: Colors.black,
      ),
      filled: true,
      fillColor: Colors.white,
      floatingLabelBehavior: FloatingLabelBehavior.never,
    ),
  );
}
