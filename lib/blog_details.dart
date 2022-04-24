import 'package:flutter/material.dart';
import 'package:sinocrack/Navbar/Navbar.dart';

class BlogDetails extends StatefulWidget {
  static const routeName = '/blog_details';
  final Map args;
  const BlogDetails({Key? key, required this.args}) : super(key: key);

  @override
  State<BlogDetails> createState() => _BlogDetailsState();
}

class _BlogDetailsState extends State<BlogDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 61, 59, 59),
        body: Column(
          children: [Navbar(selectedIndex: 4)],
        ));
  }
}
