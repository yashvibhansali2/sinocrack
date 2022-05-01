import 'package:flutter/material.dart';
import 'package:sinocrack/Navbar/Navbar.dart';
import 'package:sinocrack/widgets/bottom_bar.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _messageTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 5,
              child: Image.network(
                  'https://thumbs.dreamstime.com/b/closeup-sand-pattern-beach-summer-backgrou-201616839.jpg',
                  fit: BoxFit.fill),
            ),
            ListView(
              children: [
                const Navbar(selectedIndex: 0),
                Padding(
                  padding: const EdgeInsets.only(top: 120.0, bottom: 120),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      "Contact Us",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(
                        top: 20, left: 15, right: 15, bottom: 30),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height - 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 80,
                                child: Text('Get in Touch!',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: const Text(
                                  'Just send us your questions or concerns using this form and we will give you the help you need as soon as possible. Alternatively, you can write to us at the email address mentioned, call us on our support number, Whatsapp us on the same number or simply visit us at our address.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 62, 62, 62)),
                                ),
                              ),
                              const SizedBox(height: 80),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text('Our Offices',
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Text('New York',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                                '7364 Riverwood Street, Suite 8574, Cottonwood, NY 96045, USA',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    height: 1.5,
                                                    color: Color.fromARGB(
                                                        255, 102, 102, 102))),
                                            SizedBox(
                                              height: 40,
                                            ),
                                            Text('Los Angeles',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                                '7364 Riverwood Street, Suite 8574, Cottonwood, NY 96045, USA',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    height: 1.5,
                                                    color: Color.fromARGB(
                                                        255, 102, 102, 102))),
                                          ]),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text('Scheduled Visit',
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Text('Assistance Hours',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text('Monday - Friday ',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    height: 1.5,
                                                    color: Color.fromARGB(
                                                        255, 102, 102, 102))),
                                            Text('6am to 8pm ',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    height: 1.5,
                                                    color: Color.fromARGB(
                                                        255, 102, 102, 102))),
                                            SizedBox(
                                              height: 40,
                                            ),
                                            Text('Contact Details',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black)),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            OurContact(
                                              icon: Icons.phone,
                                              title: '+91-123-456-7890',
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            OurContact(
                                              icon: Icons.mail,
                                              title: 'sino@crack.com',
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            top: 40,
                            left: 40,
                            right: 40,
                          ),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Drop Us a Line',
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                              ),
                              const Text(
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr. ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 144, 144, 144))),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                              ),
                              const Text(
                                'Email',
                                style: TextStyle(fontSize: 15),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              reusableTextField(_emailTextController, 1),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Name',
                                style: TextStyle(fontSize: 15),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              reusableTextField(_nameTextController, 1),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Message',
                                style: TextStyle(fontSize: 15),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              reusableTextField(_messageTextController, 6),
                              const SizedBox(
                                height: 40,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Send',
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  elevation: MaterialStateProperty.all(0),
                                  minimumSize: MaterialStateProperty.all(Size(
                                      MediaQuery.of(context).size.width * 0.09,
                                      MediaQuery.of(context).size.height *
                                          0.06)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * .265,
                              right: MediaQuery.of(context).size.width * .06),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 10)),
                          child: Image.asset(
                            'assets/sino_maps.png',
                          ),
                        ),
                        Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width * .2,
                            color: Colors.white,
                            child: const Text('O'),
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * .068))
                      ],
                    ),
                  ),
                ),
                const BottomBar(),
              ],
            ),
          ],
        ));
  }
}

TextField reusableTextField(
    TextEditingController controller, int maximumLines) {
  return TextField(
    controller: controller,
    maxLines: maximumLines,
    style: const TextStyle(
      color: Colors.white70,
    ),
    decoration: const InputDecoration(
      // labelText: text,
      // labelStyle: const TextStyle(
      //   color: Colors.black,
      // ),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Color.fromARGB(255, 216, 216, 216), width: 0.0),
      ),
      filled: true,
      fillColor: Colors.white,
      // floatingLabelBehavior: FloatingLabelBehavior.never,
    ),
  );
}

class OurContact extends StatelessWidget {
  final IconData icon;
  final String title;
  const OurContact({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: const Color.fromARGB(255, 102, 102, 102),
          size: 22.0,
        ),
        const SizedBox(width: 5),
        Text(title,
            style: const TextStyle(
              fontSize: 15,
              height: 1.5,
              color: Color.fromARGB(255, 102, 102, 102),
            )),
      ],
    );
  }
}
