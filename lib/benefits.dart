import 'package:flutter/material.dart';
import 'package:sinocrack/widgets/bottom_bar.dart';

import 'Navbar/Navbar.dart';

class Benefits extends StatefulWidget {
  const Benefits({Key? key}) : super(key: key);

  @override
  State<Benefits> createState() => _BenefitsState();
}

class _BenefitsState extends State<Benefits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black.withOpacity(0.9),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          child: Opacity(
            opacity: 0.5,
            child: Image.network(
                'https://i0.wp.com/ideawallpapers.com/wp-content/uploads/2022/02/c4.jpg',
                fit: BoxFit.fill),
          ),
        ),
        ListView(children: [
          const Navbar(selectedIndex: 0),
          Padding(
            padding: const EdgeInsets.only(top: 200.0, bottom: 120),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              child: const Text(
                "BENEFITS",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 3.2,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/test2.jpeg',
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 1),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      height: MediaQuery.of(context).size.height * .7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          BenefitsData(
                              icon: Icons.health_and_safety_outlined,
                              heading: ' I. CRACK-IT IS A SAFE SUBSTANCE ',
                              text:
                                  'CRACK-IT is not controlled by any legal regulation such as explosives and explosive agents, etc. It is non-explosive, therefore supervision of trained personnel is not essential. CRACK-IT requires no special precautions if kept in a dry place. The product is not sensitive to electrical discharge or currents. Demolition can be easily and safely performed anywhere.'),
                          BenefitsData(
                              icon: Icons.notifications_off_outlined,
                              heading:
                                  'II. CRACK-IT IS A SOUNDLESS CRACKING AGENT',
                              text:
                                  "Unlike the existing methods of demolition by explosives or breaking equipment, CRACK-IT does not make any noise, vibration, flying debris, dust or gas. CRACK-IT quietly and gradually demolishes rock or concrete with its expansive stress caused by hydration reaction. Rocks and reinforced concrete may be demolished safely without environmental pollution. Furthermore, CRACK-IT's expansive stress continues even after crack initiation, the crack opening distance becomes wider as time passes.")
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .6,
                        height: MediaQuery.of(context).size.height * .6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            BenefitsData(
                                icon: Icons.check_circle_outline_outlined,
                                heading: ' III. CRACK-IT HANDLES EASILY',
                                text:
                                    'No lid (or cap) is necessary after CRACK-IT is poured into a hole of rock or reinforced concrete, nor is tamping required as with explosives. CRACK-IT exerts its strength in a short time. Due to CRACK-IT strong adhesion and frictional resistance to inner surface of the hole, spurs due to heat-generation (blown-out shot) do not occur when used within the parameters as noted in the conditions. The expansive stress along the hole depth is almost constant except for that near the entrance of the hole. Generally the expansive stress loss from the hole entrance has little effect on the demolition work when hole depth is long.'),
                            BenefitsData(
                                icon: Icons.settings_outlined,
                                heading:
                                    'IV. CRACK-IT IS EASY TO USE - JUST Mix It, Fill It, Crack It',
                                text:
                                    "Just mix with water, pour into holes, then it expands to crack. Neither capping with mortar, sand, etc. nor tamping with a bar is necessary after CRACK-IT  mixed with water is poured into drilled holes in rock or concrete. Using CRACK-IT does not require a special license unlike explosives, explosive agents, etc. It is environmentally friendly. It releases no toxic or harmful substances of any kind.")
                          ],
                        ),
                      ),
                      Image.asset('assets/test2.jpeg',
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 1),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/test2.jpeg',
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 1),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      height: MediaQuery.of(context).size.height * .7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          BenefitsData(
                              icon: Icons.radio_button_checked,
                              heading:
                                  ' V. CRACK-IT HAS AN EXPANSIVE STRESS MORE THAN 11 Mt/m2 ',
                              text:
                                  'Generally, the compressive fracture stress of rocks is 500 to 2500 T/m2 and that of concrete 300 to 500 T/m2. However, the tensile fracture stress is very small, i.e., it ranges from 40 to 70 T/m2 in concrete, respectively. Since demolition by using CRACK-IT is based on a fracture due to a tensile stress, all kinds of rocks and concrete can be cracked and broken by using CRACK-IT when appropriate holes are properly drilled.'),
                          BenefitsData(
                              icon: Icons.alarm_add_outlined,
                              heading:
                                  'VI. CRACK-IT DOES SYSTEMATICAL HIGH-EFFICIENCY DEMOLITION WORK',
                              text:
                                  "CRACK-IT makes it very easy to control the shape of to-be-cracked objects after being broken according to requirements; it can be demolished or can remain unharmed. CRACK-IT cracks reinforced concrete, rock, limestone, granite and marble safely and quietly. Being a non-explosive material, it works without noise, vibration, dust, toxic gases and flying rock. Cracked rock or concrete can then easily be broken with breakers remarkably reducing time and cost required for breaking. CRACK-IT can demolish rock or concrete systematically, and also demolition work in water is possible.")
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const BottomBar(),
        ])
      ]),
    );
  }
}

class BenefitsData extends StatelessWidget {
  final IconData icon;
  final String heading;
  final String text;
  const BenefitsData({
    Key? key,
    required this.icon,
    required this.heading,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.blueGrey,
          size: 60.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(heading,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              Text(text,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 172, 172, 172),
                    letterSpacing: 1.2,
                    height: 1.2,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
