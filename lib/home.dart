import 'dart:ui';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    var physicalScreenSize = window.physicalSize;
    var physicalWidth = physicalScreenSize.width;
    var physicalHeight = physicalScreenSize.height;
    //print(physicalHeight);
    //print(physicalWidth);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                physicalWidth * 0.05, 30, physicalWidth * 0.05, 0),
            child: SizedBox(
              height: physicalHeight * 0.1,
              width: physicalWidth * 0.8,
              child: Card(
                color: Colors.red[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: SizedBox(
                          height: 30,
                          width: 100,
                          child: Card(color: Colors.grey[300])),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 50, 0),
                      child: SizedBox(
                        height: 30,
                        width: double.maxFinite,
                        child: Card(
                          color: Color.fromARGB(255, 163, 250, 164),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                physicalWidth * 0.05, 30, physicalWidth * 0.05, 0),
            child: SizedBox(
              height: physicalHeight * 0.1,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Card(
                color: Colors.red[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Center(
                          child: Container(
                              transform:
                                  Matrix4.translationValues(0.0, -25.0, 0.0),
                              height: 30,
                              width: 100,
                              child: Card(
                                color: Colors.grey[300],
                              ))),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: SizedBox(
                        height: 30,
                        width: double.maxFinite,
                        child: Card(
                          color: Color.fromARGB(255, 163, 250, 164),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
