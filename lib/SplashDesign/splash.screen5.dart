import 'package:flutter/material.dart';

class SplashScreen5 extends StatefulWidget {
  const SplashScreen5({Key? key}) : super(key: key);

  @override
  _SplashScreen5State createState() => _SplashScreen5State();
}

class _SplashScreen5State extends State<SplashScreen5> {
  List<Color> colorList = [
    Colors.teal,
    Colors.teal.shade100,
    Colors.teal,
    Colors.white,
  ];
  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];
  int index = 0;
  Color color1 = Colors.teal;
  Color color2 = Colors.teal.shade100;
  Color color3 = Colors.teal;
  Color color4 = Colors.white;

  Alignment? begin = Alignment.topLeft, end = Alignment(-0.70, -0.8);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 1)).whenComplete(() => {
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
                index = 0;
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
              gradient: LinearGradient(
                begin: begin!,
                end: end!,
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
