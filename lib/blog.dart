// ignore_for_file: prefer_const_constructors

import 'package:flusmic/flusmic.dart';
import 'package:flutter/material.dart';
import 'package:sinocrack/Navbar/Navbar.dart';
import 'package:sinocrack/blog_details.dart';
import 'package:sinocrack/widgets/bottom_bar.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  onEntered(bool isHovered, int index) {
    setState(() {
      hoveringContainer[index] = !isHovered;
    });
  }

  List allBlogs = [];
  List<bool> hoveringContainer = [];
  getBlogs() async {
    final flusmic = await Flusmic(
      prismicEndpoint: 'https://sino.prismic.io/api/v2',
    ).getRootDocument();
    allBlogs = flusmic.results;
    hoveringContainer = List.generate(allBlogs.length, (index) => false);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getBlogs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 59, 59),
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.network(
              'https://thumbs.dreamstime.com/b/closeup-sand-pattern-beach-summer-backgrou-201616839.jpg',
              fit: BoxFit.fill),
        ),
        ListView(
          children: [
            Navbar(selectedIndex: 4),
            Padding(
              padding: const EdgeInsets.only(top: 120.0, bottom: 120),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * .1,
                child: const Text(
                  "Blogs",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 1.5,
              padding: const EdgeInsets.all(50),
              color: Color.fromARGB(255, 61, 59, 59),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1),
                itemCount: allBlogs.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return MouseRegion(
                    cursor: MouseCursor.defer,
                    onEnter: (e) => onEntered(true, index),
                    onExit: (e) => onEntered(false, index),
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 700),
                      child: hoveringContainer[index]
                          ? Container(
                              height: 450,
                              width: 350,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    allBlogs[index].data['blog_image']['url'],
                                    width: double.infinity,
                                    height: 300,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: Text(
                                      allBlogs[index].data['blog_title'][0]
                                          ['text'],
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 20),
                                    child: Text(
                                      allBlogs[index].data['blog_description']
                                          [0]['text'],
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                print(allBlogs[index].data['body']);
                                Navigator.of(context).pushNamed(
                                    BlogDetails.routeName,
                                    arguments: {'blog': allBlogs[index].data});
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: 450,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        opacity: 0.5,
                                        image: NetworkImage(
                                          allBlogs[index].data['blog_image']
                                              ['url'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20, top: 20),
                                            child: Text(
                                              allBlogs[index].data['blog_title']
                                                  [0]['text'],
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20,
                                                top: 10,
                                                bottom: 30,
                                                right: 20),
                                            child: Text(
                                              allBlogs[index]
                                                      .data['blog_description']
                                                  [0]['text'],
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ),
                  );
                },
              ),
            ),
            const BottomBar()
          ],
        ),
      ]),
      // floatingActionButton: FloatingActionButton.extended(
      //     onPressed: () {
      //       // setState(() {
      //       //   showFirstContainer = !showFirstContainer;
      //       // });
      //     },
      //     label: Text('Animate')),
    );
  }
}
