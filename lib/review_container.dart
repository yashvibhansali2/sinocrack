import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewContainer extends StatefulWidget {
  const ReviewContainer({Key? key}) : super(key: key);

  @override
  State<ReviewContainer> createState() => _ReviewContainerState();
}

class _ReviewContainerState extends State<ReviewContainer> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) => setState(() {
              isHovering = true;
            }),
        onExit: (event) => setState(() {
              isHovering = false;
            }),
        child: Transform.scale(
            scale: isHovering ? 1.05 : 1,
            child: Container(
              margin: const EdgeInsets.only(right: 50),
              width: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    spreadRadius: 2,
                    blurRadius: 4,
                    color: isHovering ? Colors.white : Colors.black,
                  )
                ],
                color: isHovering ? Colors.grey[300] : Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RatingBar.builder(
                      initialRating: 4.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: 30,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(
                          horizontal: 3.0, vertical: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: !isHovering ? Colors.white : Colors.black,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Sino Crack',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: !isHovering ? Colors.white : Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Sino Crack is a cracker that is used to crack android apps',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: !isHovering ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
