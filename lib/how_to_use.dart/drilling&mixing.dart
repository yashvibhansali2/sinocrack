import 'package:flutter/material.dart';

import '../Navbar/Navbar.dart';
import '../widgets/bottom_bar.dart';

class Drilling extends StatefulWidget {
  const Drilling({Key? key}) : super(key: key);

  @override
  State<Drilling> createState() => _DrillingState();
}

class _DrillingState extends State<Drilling> {
  bool preDrillingHovering = false;
  bool drillingHovering = false;
  bool holeDepthHovering = false;
  bool holePatternHovering = false;
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
                  "How to Use?",
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
          padding: const EdgeInsets.symmetric(horizontal: 500.0, vertical: 80),
          child: Table(
            border: TableBorder.all(color: Colors.black),
            children: const [
              TableRow(children: [
                Text('Cell 1'),
                Text('Cell 2'),
                Text('Cell 3'),
                Text('Cell 1'),
                Text('Cell 2'),
                Text('Cell 3'),
              ]),
              TableRow(children: [
                Text('Cell 4'),
                Text('Cell 5'),
                Text('Cell 6'),
                Text('Cell 1'),
                Text('Cell 2'),
                Text('Cell 3'),
              ]),
              TableRow(children: [
                Text('Cell 4'),
                Text('Cell 5'),
                Text('Cell 6'),
                Text('Cell 1'),
                Text('Cell 2'),
                Text('Cell 3'),
              ]),
              TableRow(children: [
                Text('Cell 4'),
                Text('Cell 5'),
                Text('Cell 6'),
                Text('Cell 1'),
                Text('Cell 2'),
                Text('Cell 3'),
              ])
            ],
          ),
        ),

        Container(
          height: MediaQuery.of(context).size.height * 2,
          padding: const EdgeInsets.only(left: 60, right: 60, top: 40),
          child: Column(children: [
            const Text('DRILLING     ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      onEnter: (v) {
                        setState(() {
                          preDrillingHovering = true;
                          drillingHovering = true;
                          holeDepthHovering = true;
                          holePatternHovering = true;
                        });
                      },
                      onExit: (v) {
                        setState(() {
                          preDrillingHovering = false;
                          drillingHovering = false;
                          holeDepthHovering = false;
                          holePatternHovering = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                              width: MediaQuery.of(context).size.width,
                              alignment: preDrillingHovering
                                  ? Alignment.centerRight
                                  : null,
                              decoration: BoxDecoration(
                                color: preDrillingHovering
                                    ? Colors.grey
                                    : Colors.black,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 15),
                              child: Text('Pre-Drilling Holes',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: preDrillingHovering
                                        ? Colors.black
                                        : Colors.grey,
                                    fontSize: 30,
                                  )),
                            ),
                            const SizedBox(height: 30),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                  'Crack powder’s effectiveness depends on the placement, diameter and depth of the holes drilled in the material. To determine the right combination of hole size and spacing, first make a reference hole design using the parameters from the hole design sections, then drill several holes of different diameter at different burden and spacing. Now check the break conditions of each of them and then decide hole diameter, depth, burden and spacing.',
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: MediaQuery.of(context).size.width / 1.9,
                      decoration: BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                            width: MediaQuery.of(context).size.width,
                            alignment:
                                drillingHovering ? Alignment.centerRight : null,
                            decoration: BoxDecoration(
                              color:
                                  drillingHovering ? Colors.grey : Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15),
                            child: Text('Drilling',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: drillingHovering
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 30,
                                )),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text('I. Drilling machine:',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(height: 5),
                                        Text(
                                            'Use electrical drill, rock drill or crawler drill.',
                                            style: TextStyle(
                                              fontSize: 18,
                                            ))
                                      ]),
                                ),
                                const SizedBox(height: 15),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text('II. Drilling direction:',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 5),
                                      Text(
                                          'It is preferable to drill holes vertically, but in case of a wall or pillar of reinforced concrete where vertical drilling is difficult, an inclined hole may be drilled. Since a greater effect is achieved with a deeper hole, in case of a thin material, consideration should be given so as to get a long hole depth by drilling it obliquely, if necessary. Horizontal holes can have the spacing as with vertical holes.',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ))
                                    ]),
                                const SizedBox(height: 15),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      SizedBox(
                                        child: Text(
                                            'III. Hole diameter and hole spacing:',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                          'The breaking plan of the hole design sections should serve as a guideline in making this decision. In general, the preferable hole diameter is from 40 to 50 mm.',
                                          style: TextStyle(
                                            fontSize: 18,
                                          )),
                                    ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                            width: MediaQuery.of(context).size.width,
                            alignment: holeDepthHovering
                                ? Alignment.centerRight
                                : null,
                            decoration: BoxDecoration(
                              color: holeDepthHovering
                                  ? Colors.grey
                                  : Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15),
                            child: Text('Hole Depth',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: holeDepthHovering
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 30,
                                )),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: const Text(
                                      '1. Maximum Hole Depth is 10 feet. (3.05 meter)',
                                      style: TextStyle(
                                        fontSize: 18,
                                      )),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                    '2. Minimum Hole Depth is 4 times hole diameter; for example, 5" with 1¼" hole, 6" with 1½". Holes shallower than 4 times diameter are likely to blow out.',
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                                const SizedBox(height: 15),
                                const Text(
                                    "3. In reinforced concrete, drill 90% to 95% of its depth. In a ledge, drill as deep as you want to remove. In boulders, drill 2/3rd to 3/4th of the rock's thickness.",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                                const SizedBox(height: 15),
                                const Text(
                                    "4. In soft hardness rock, like Marble, hole depth is 100%. In middle or high hardness rock, like granite, hole depth is 105%. ",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                            width: MediaQuery.of(context).size.width,
                            alignment: holePatternHovering
                                ? Alignment.centerRight
                                : null,
                            decoration: BoxDecoration(
                              color: holePatternHovering
                                  ? Colors.grey
                                  : Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15),
                            child: Text('Hole Pattern',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: holePatternHovering
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 30,
                                )),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: const [
                                Text(
                                    '1. Holes must be drilled so as to allow a free face for the Crackamite to push towards. For example, drilling at a 45° angle in the flat surface of a ledge will push it upwards, but drilling straight down might not allow the pressure to go anywhere. ',
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                                SizedBox(height: 15),
                                Text(
                                    '2. To demolish a slab without pushing out the walls, which surround it, drill a cone shaped pattern at the center and fill these holes first. The cone will pop upwards and create a free face.',
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                                SizedBox(height: 15),
                                Text(
                                    "3. Hole pattern depends on tensile strength of what you're breaking, amount of rebar, if any, and the size of the pieces you want when you're done. This can often be determined by experiment; a good starting point is to space holes one foot apart, in rows, one and a half feet apart. In non-reinforced concrete, holes may be spaced as far apart as 30 cm.",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                                SizedBox(height: 15),
                                Text(
                                    "4. Hole pattern also depends on how fast you need results. More holes spaced closer together will give faster cracking time and smaller pieces, but will cost more in terms of labour and Crack Powder. ",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                                SizedBox(height: 15),
                                Text(
                                    "5. Boulders are much easier to break than reinforced concrete or ledge, and drill holes can be spaced further apart, especially if breaking speed is not critical. ",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                                SizedBox(height: 15),
                                Text(
                                    "6. Empty holes can also be used to direct cracks - they cost less than filled holes. This  will save money compared to filling all the holes, but will slow down the breaking time.",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ]),
        ),

        Container(
          color: Colors.blueGrey,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        const Text('MIXING',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          // padding: const EdgeInsets.only(right: 20, left: 20),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                // Column(
                //   children: [
                //     MixingHeading(
                //       text: 'Mixing Equipment',
                //     ),
                //     MixingHeading(
                //       text: 'Mixing Method',
                //     ),
                //     MixingHeading(
                //       text: 'Mixing Water',
                //     ),
                //     MixingHeading(
                //       text: 'Standard Quantity',
                //     ),
                //     SizedBox(
                //       height: MediaQuery.of(context).size.height * 0.02
                //     ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.ac_unit),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text('Mixing Equipment',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text(
                              'Mix Crack Powder with water, one bag at a time, by hand or, preferably, with a mechanical mixer. Prepare the following equipment:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          const SizedBox(height: 10),
                          const Text(
                              '(1) Container: A metal bucket or clean can of 10 - 20 litres capacity.',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                                '(2) Mixer: For example, a hand-mixer.',
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                              '(3) Water measure: Beaker or measuring cylinder.',
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          const SizedBox(height: 5),
                          const Text(
                              '(4) Protection: Rubber gloves, safety glasses.',
                              style: TextStyle(
                                fontSize: 15,
                              ))
                        ],
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 5.5,
                      child: Column(
                        children: [
                          const Icon(Icons.ac_unit),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text('Mixing Method',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text(
                              'Pour approximately 1.5 liter (0.4 U.S. gallon) of water into container. Add one bag of CrackPowder gradually and mix well until it has a good fluidity. When viscosity of the mixture of CrackPowder and water is too high to pour into the hole, add a little water to get a good fluidity. Do not exceed 34% of water ratio (1.7 litre; 0.45 U.S. gallon per 5 kg; 11 lb. of CrackPowder). The mixing time by hand-mixer is about 2 - 3 minutes. It is recommended that a mechanical mixer be used on large volume jobs. When mixing by hands, wear rubber gloves.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ],
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      child: Column(
                        children: [
                          const Icon(Icons.ac_unit),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text('Mixing Water',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text(
                              'I. Use clean water that is not contaminated with oil, organic substances, etc.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          const SizedBox(height: 5),
                          const Text(
                              'II. Use the proper temperature of water for each grade of CrackPowder.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          const SizedBox(height: 5),
                          const Text(
                              'III. Water at a temperature below 15°C (59°F) must be used when the average atmospheric temperature is more than 45°C for CrackPowder CM - H.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              )),
                          const SizedBox(height: 5),
                          const Text(
                              'IV. The cooler the water is, the longer CrackPowder will remain fluid.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ],
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      child: Column(
                        children: [
                          const Icon(Icons.ac_unit),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text('Standard Quantity',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          const Text(
                              'The quantity of CrackPowder to be used for cracking differs with the hole spaces and diameters. In Table 2, the relation between the quantity of CrackPowder used and the hole diameters is indicated for the hole of 1 m depth, where CrackPowder is mixed at a water ratio of 30%.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ],
                      )),
                ]),
            // ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),

        // )
        const BottomBar()
      ]),
    );
  }
}
