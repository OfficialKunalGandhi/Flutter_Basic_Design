import 'dart:math';

import 'package:flutter/material.dart';

class SplashScreen7 extends StatefulWidget {
  const SplashScreen7({Key? key}) : super(key: key);

  @override
  _SplashScreen7State createState() => _SplashScreen7State();
}

class _SplashScreen7State extends State<SplashScreen7> {
  List<Color> colorList = [
    Colors.teal,
    Colors.teal.shade100,
    Colors.teal,
    Colors.white,
  ];
  List<double> alignmentList = [1.2, 2.1, 2.1, 1.1];
  int index = 0;
  Color color1 = Colors.teal;
  Color color2 = Colors.teal.shade100;
  Color color3 = Colors.teal;
  Color color4 = Colors.white;

  double? begin = 1.1, end = 2.1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(microseconds: 1)).whenComplete(() => {
          setState(() {
            // animate the color
            color3 = colorList[(index + 1) % colorList.length];
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 2),
            onEnd: () {
              setState(() {
                index = index + 1;
                // animate the color
                color1 = colorList[index % colorList.length];
                color3 = colorList[(index + 1) % colorList.length];
                print("change");
                //// animate the alignment
                begin = alignmentList[index % alignmentList.length];
                end = alignmentList[(index + 2) % alignmentList.length];
              });
            },
            decoration: BoxDecoration(
              gradient: SweepGradient(
                // begin: begin!,
                // end: end!,
                startAngle: begin!,
                endAngle: end!,
                center: Alignment.bottomLeft,
                stops: [0.2, 0.1, 1.2, 1.2],
                colors: [
                  color1,
                  color2,
                  color3,
                  color4,
                ],
                tileMode: TileMode.mirror,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.ac_unit_outlined,
              size: 140,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
