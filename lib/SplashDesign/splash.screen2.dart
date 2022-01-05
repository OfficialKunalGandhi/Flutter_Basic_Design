import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(-0.4, -0.8),
            stops: [0.0, 0.5, 0.5, 1],
            colors: [
              Colors.blue,
              Colors.blue,
              Colors.blue.shade200,
              Colors.blue.shade300,
            ],
            tileMode: TileMode.repeated,
          ),
        ),
        height: MediaQuery.of(context).size.height / 2,
        child: Stack(
          children: [
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
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
      ),
    );
  }
}
