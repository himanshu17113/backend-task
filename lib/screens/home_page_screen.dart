import 'package:flutter/material.dart';

import '../config/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              var totalHeight = constraints.maxHeight;
              var totalWidth = constraints.maxWidth;
              return Container(
                color: Colors.black,
                child: Stack(
                  children: [
                    Positioned(
                      left: totalWidth * 0.11,
                      top: totalHeight * 0.04,
                      child: SizedBox(
                        width: totalWidth * 0.24,
                        height: totalHeight * 0.06,
                        child: Text(
                          "Daily",
                          style: textStyle12,
                        ),
                      ),
                    ),
                    Positioned(
                      left: totalWidth * 0.11,
                      top: totalHeight * 0.11,
                      child: SizedBox(
                        width: totalWidth * 0.36,
                        height: totalHeight * 0.02,
                        child: Text(
                          "Recommended",
                          style: textStyle13,
                        ),
                      ),
                    ),
                    Positioned(
                      left: totalWidth * 0.79,
                      right: totalWidth * 0.15,
                      top: totalHeight * 0.08,
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      left: totalWidth * 0.62,
                      top: totalHeight * 0.14,
                      child: Container(
                        width: totalWidth * 0.46,
                        height: totalHeight * 0.21,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.03),
                        ),
                      ),
                    ),
                    Positioned(
                      left: totalWidth * 0.05,
                      top: totalHeight * 0.17,
                      child: Container(
                        width: totalWidth * 0.89,
                        height: totalHeight * 0.62,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/home/img.png'),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.repeat,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.9737)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: totalWidth * 0.10,
                      top: totalHeight * 0.68,
                      child: Container(
                        width: totalWidth * 0.79,
                        height: totalHeight * 0.08,
                        padding: const EdgeInsets.only(
                          top: 11,
                          right: 20,
                          bottom: 11,
                          left: 20,
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(236, 236, 236, 0.9),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jhon Walker",
                                      style: textStyle14,
                                    ),
                                    Text(
                                      "Website content writer",
                                      style: textStyle15,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(250, 180, 44, 1),
                                    ),
                                    Text(
                                      "4.9",
                                      style: textStyle15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: totalWidth * 0.42,
                      top: totalHeight * 0.81,
                      child: Container(
                        width: totalWidth * 0.15,
                        height: totalHeight * 0.007,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius:
                              BorderRadius.all(Radius.circular(100.0)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: totalWidth * 0.08,
                      top: totalHeight * 0.88,
                      child: Container(
                        width: totalWidth * 0.83,
                        height: totalHeight * 0.09,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: BottomNavigationBar(
                          type: BottomNavigationBarType.fixed,
                          backgroundColor: const Color.fromRGBO(39, 39, 39, 1),
                          currentIndex: 0,
                          selectedItemColor:
                              const Color.fromRGBO(129, 126, 255, 1),
                          unselectedItemColor:
                              const Color.fromRGBO(67, 67, 67, 1),
                          items: const [
                            BottomNavigationBarItem(
                              label: '',
                              icon: Icon(
                                Icons.home,
                              ),
                            ),
                            BottomNavigationBarItem(
                              label: '',
                              icon: Icon(
                                Icons.file_copy_rounded,
                              ),
                            ),
                            BottomNavigationBarItem(
                              label: '',
                              icon: Icon(
                                Icons.notifications,
                              ),
                            ),
                            BottomNavigationBarItem(
                              label: '',
                              icon: Icon(
                                Icons.account_circle_rounded,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
