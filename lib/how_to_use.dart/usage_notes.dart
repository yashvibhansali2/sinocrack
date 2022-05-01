import 'package:flutter/material.dart';

import '../Navbar/Navbar.dart';
import '../widgets/bottom_bar.dart';

class UsageNotes extends StatefulWidget {
  const UsageNotes({Key? key}) : super(key: key);

  @override
  State<UsageNotes> createState() => _UsageNotesState();
}

class _UsageNotesState extends State<UsageNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Stack(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.network(
              "https://thumbs.dreamstime.com/b/closeup-sand-pattern-beach-summer-backgrou-201616839.jpg",
              fit: BoxFit.cover,
              // width: width,
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Navbar(selectedIndex: 0),
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Usage Notes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      color: Colors.white),
                ),
              ),
            ],
          )
        ]),
        Container(
            padding: const EdgeInsets.only(top: 100, left: 100, right: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 1.2,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'NOTES ON USAGE',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        const Points(
                          number: '1',
                          text:
                              'Never fill glass or metal containers with SINO-CRACK, or any container which widens towards the bottom.',
                        ),
                        const Points(
                          number: '2',
                          text: 'Never pump SINO-CRACK.',
                        ),
                        const Points(
                          number: '3',
                          text:
                              'Mixing by hand lengthens mix time and is more likely to result in a blowout.',
                        ),
                        const Points(
                          number: '4',
                          text:
                              'When rock or concrete is above 200C, add 150g of extra water per 5kgs SINO-CRACK,',
                        ),
                        const Points(
                          number: '5',
                          text:
                              'SINO-CRACK is usually not cost effective in slabs less than 10cm thick, a pavement breaker or hydraulic hammer will work better unless noise is a problem.',
                        ),
                        const Points(
                          number: '6',
                          text:
                              'The most cost effective demolition technique for ledge is often a combination of SINO-CRACK (TO PRODUCE CRACKS) and a hydraulic hammer. Drill holes can be spaced out further in this case.',
                        ),
                        const Points(
                          number: '7',
                          text:
                              'The best way to demolish underwater rocks or concrete is to build a coffer dam and pump out the area. SINO-CRACK hardens in fifteen to twenty minutes, and after that the area can be flooded again. SINO-CRACK CAN BE USED UNDERWATER IF THE ROCK OF CONCRETE IS NOT VERY DEEP, BUT RESULTS ARE NOT ALWAYS SATISFACTORY',
                        ),
                        const Points(
                          number: '8',
                          text:
                              'SINO-CRACK must be used in holes; pouring it into existing cracks in rock will not work.',
                        ),
                        const Points(
                          number: '9',
                          text:
                              'Safety goggles must be worn at all times by everyone in the area, hard hats and steel toed boots are a good idea on any construction or demolition site.',
                        ),
                        const Points(
                          number: '10',
                          text:
                              'When using the temperature chart, bear in mind that the actual drill hole temperature may be much higher than the surrounding air temperature. This is caused from being in sun or affected by nearby heat from machinery or from drilling the holes. ',
                        ),
                        const Points(
                          number: '11',
                          text:
                              '. Cold temperature, hard rock, or holes spaced too far apart can lengthen breaking times. If it did not break overnight-wait a while before redoing. SINO-CRACK continues to increase pressure for 3days.',
                        ),
                        const Points(
                          number: '12',
                          text:
                              'If SINO-CRACK drops below freezing, the reaction will very slow, but it will start up again once it thaws.',
                        ),
                        const Points(
                          number: '13',
                          text:
                              '. If mixed SINO-CRACK begins to steam in the bucket, add more of water, stir, and throw it away. You’ve spent too much time in mixing the product.',
                        ),
                        const Points(
                          number: '14',
                          text:
                              'If filled holes start to smoke or steam. That is a sign there may be a blow out. Immediately clear the area of people. The vapors are only steam and are not hazardous or toxic in any way',
                        ),
                        const Points(
                          number: '15',
                          text:
                              'Make sure that everyone working with SINO-CRACK understands the possibility of blowouts, has read this technical manual thoroughly, and is wearing safety goggles. ',
                        ),
                        const Points(
                          number: '16',
                          text:
                              '. Ledges, boulders, and concrete will vary in strength. It is not a problem for SINO-CRACK to break rock as long as there is a free surface for the rock to break towards.',
                        ),
                      ]),
                )
              ],
            )),
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        const BottomBar()
      ]),
    );
  }
}

class Points extends StatelessWidget {
  final String number;
  final String text;
  const Points({Key? key, required this.number, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      CircleAvatar(
        backgroundColor: Colors.blueGrey,
        child: Text(number, style: const TextStyle(color: Colors.white)),
        maxRadius: 13,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.01,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.6,
        child: Text(text,
            style: const TextStyle(
              height: 1.5,
              fontSize: 14,
            )),
      )
    ]);
  }
}
