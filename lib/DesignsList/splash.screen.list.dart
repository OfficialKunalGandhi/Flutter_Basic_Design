import 'package:flutter/material.dart';
import 'package:flutter_basic_designs/SplashDesign/splash.screen1.dart';
import 'package:flutter_basic_designs/SplashDesign/splash.screen2.dart';
import 'package:flutter_basic_designs/SplashDesign/splash.screen3.dart';
import 'package:flutter_basic_designs/SplashDesign/splash.screen4.dart';

class SplashScreenList extends StatefulWidget {
  const SplashScreenList({Key? key}) : super(key: key);

  @override
  _SplashScreenListState createState() => _SplashScreenListState();
}

class _SplashScreenListState extends State<SplashScreenList> {
  List<Widget> SplashScreenDesign = [
    SplashScreen1(),
    SplashScreen2(),
    SplashScreen3(),
    SplashScreen4()
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: Colors.white,
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: SplashScreenDesign.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SplashScreenDesign.elementAt(index)));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.01,
                        height: MediaQuery.of(context).size.height / 12,
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  blurRadius: 0.5,
                                  offset: Offset.fromDirection(0.5))
                            ],
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle),
                        child: Text(
                          SplashScreenDesign.elementAt(index).toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ),
                    );
                  }),
            ],
          )),
    );
  }
}
