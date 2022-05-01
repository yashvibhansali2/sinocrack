import 'package:sinocrack/responsive.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);
  static const Color gradientStartColor = Color(0xB16D747C);
  static const Color gradientEndColor = Color.fromARGB(255, 11, 19, 54);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: gradientStartColor,
              offset: Offset(1.0, 6.0),
              blurRadius: 1.0,
            ),
            BoxShadow(
              color: gradientEndColor,
              offset: Offset(1.0, 6.0),
              blurRadius: 1.0,
            ),
          ],
          color: Colors.black
          // gradient: LinearGradient(
          //     colors: [gradientStartColor, gradientEndColor],
          //     begin: FractionalOffset(0.2, 0.2),
          //     end: FractionalOffset(1.0, 1.0),
          //     stops: [0.0, 1.0],
          //     tileMode: TileMode.clamp),
          ),
      padding: const EdgeInsets.all(30),
      //color: Colors.blueGrey[900],
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'SinoCrack',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Column(
                children: [
                  Text('Company',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  FooterButtons(
                    title: 'Home',
                    onPressed: () {},
                  ),
                  FooterButtons(
                    title: 'Blog',
                    onPressed: () {},
                  ),
                  FooterButtons(
                    title: 'About Us',
                    onPressed: () {},
                  ),
                  FooterButtons(
                    title: 'Contact Us',
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Column(
                children: [
                  const ContactDetails(
                    icon: Icons.phone,
                    title: '+91-123-456-7890',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.02,
                  ),
                  const ContactDetails(
                    icon: Icons.mail,
                    title: 'sino@crack.com',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.02,
                  ),
                  const ContactDetails(
                    icon: Icons.location_on,
                    title: 'Sector-1, Noida',
                  )
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          const Text(
            'Copyright © 2021 | DBestech',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  final IconData icon;
  final String title;
  const ContactDetails({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 26.0,
        ),
        const SizedBox(width: 10),
        Text(title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.025,
              color: Colors.white,
            )),
      ],
    );
  }
}

class FooterButtons extends StatelessWidget {
  final String title;
  final dynamic onPressed;

  const FooterButtons({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: Text(title,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.02,
            color: Colors.white,
          )),
    );
  }
}
