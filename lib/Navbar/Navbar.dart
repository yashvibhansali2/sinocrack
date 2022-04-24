import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  final int selectedIndex;

  const Navbar({Key? key, required this.selectedIndex}) : super(key: key);
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatefulWidget {
  @override
  State<DesktopNavbar> createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  List<String> buttons = [
    'Home',
    'How to Use',
    'About Us',
    'Contact Us',
    'Blogs'
  ];
  List<bool> isHovering = [false, false, false, false, false];
  Widget headerContainer(int index) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovering[index] = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovering[index] = false;
        });
      },
      child: Container(
          width: 90,
          decoration: BoxDecoration(
            border: isHovering[index]
                ? Border(top: BorderSide(color: Colors.grey, width: 4))
                : null,
          ),
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 35),
              Text(
                buttons[index],
                style: TextStyle(
                    color: isHovering[index] ? Colors.grey : Colors.white,
                    fontSize: isHovering[index] ? 16 : 14),
              ),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Icon(Icons.ac_unit, color: Colors.white),
                  const Text(
                    "  Sino Crack",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            SizedBox(
              //width: MediaQuery.of(context).size.width * 0.6,
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => headerContainer(index),
                itemCount: buttons.length,
              ),
            ),
            SizedBox(
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          const Text(
            "Sino Crack",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
