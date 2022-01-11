import 'package:flutter/material.dart';
import 'package:flutter_basic_designs/DesignsList/login.screen.list.dart';
import 'package:flutter_basic_designs/DesignsList/splash.screen.list.dart';
import 'package:flutter_basic_designs/GetXProject/get.features.dart';
import 'package:flutter_basic_designs/Provider/provider.screen.dart';

class AllItemsList extends StatelessWidget {
  AllItemsList({Key? key}) : super(key: key);
  List<Widget> allItemsLists = [
    SplashScreenList(),
    LoginScreenList(),
    GetXFeatures(),
    ProviderScreen()
  ];
  List<String> allItemsListName = [
    "Splash Screen Design",
    "Login Screen Design",
    "GetX Features",
    "Provider"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 108.0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.flutter_dash_sharp,
                size: 60,
              ),
            )
          ],
          title: const Text("Flutter Basic Design",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30)),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: allItemsLists.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                allItemsLists.elementAt(index)));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 9,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [Colors.blue.shade100, Colors.blue],
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight)),
                    alignment: Alignment.center,
                    child: Text(
                      allItemsListName.elementAt(index),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                );
              }),
        ));
  }
}
