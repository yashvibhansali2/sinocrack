import 'package:countup/countup.dart';
import 'package:flutter/material.dart';

class Count extends StatefulWidget {
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
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 80,
      ),
      child: MouseRegion(
        onEnter: (event) => setState(() {
          isHovering = true;
        }),
        onExit: (event) => setState(() {
          isHovering = false;
        }),
        child: Transform.scale(
          scale: isHovering ? 1.2 : 1,
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor:
                    const Color.fromARGB(255, 34, 34, 34).withOpacity(0.5),
                radius: 30,
                child: Icon(
                  widget.icon,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Countup(
                begin: 0,
                end: widget.count,
                duration: const Duration(seconds: 3),
                separator: ',',
                suffix: ' +',
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
                widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
