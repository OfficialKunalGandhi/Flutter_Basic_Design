import 'package:flutter/material.dart';
import 'package:flutter_basic_designs/LoginDesign/login.screen1.dart';
import 'package:flutter_basic_designs/LoginDesign/login.screen2.dart';

class LoginScreenList extends StatefulWidget {
  const LoginScreenList({Key? key}) : super(key: key);

  @override
  _LoginScreenListState createState() => _LoginScreenListState();
}

class _LoginScreenListState extends State<LoginScreenList> {
  List<Widget> loginScreenDesign = const [LoginScreen1(), LoginScreen2()];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: Colors.grey,
          child: ListView.builder(
              itemCount: loginScreenDesign.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                loginScreenDesign.elementAt(index)));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.01,
                    height: MediaQuery.of(context).size.height / 12,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle),
                    child: Text(
                      loginScreenDesign.elementAt(index).toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ),
                );
              })),
    );
  }
}
