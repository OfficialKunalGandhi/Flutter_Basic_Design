import "package:flutter/material.dart";
import 'package:flutter_basic_designs/DesignsList/all.items.list.dart';
import 'package:flutter_basic_designs/GetXProject/get.back.dart';
import 'package:get/get.dart';

class GetXFeatures extends StatefulWidget {
  const GetXFeatures({Key? key}) : super(key: key);

  @override
  _GetXFeaturesState createState() => _GetXFeaturesState();
}

class _GetXFeaturesState extends State<GetXFeatures> {
  @override
  Widget build(BuildContext context) {
    Controller c = Get.put(Controller());
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 108.0,
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 20),
          //     child: Icon(
          //       Icons.flutter_dash_sharp,
          //       size: 60,
          //     ),
          //   )
          // ],
          title: const Text("Flutter GetX library",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30)),
        ),
        body: Container(
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                  onPressed: () {
                    Get.snackbar("SnackBar Title", "Snackbar Message",
                        snackPosition: SnackPosition.BOTTOM);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: Text(
                    "GetX Snakbar",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    Get.dialog(
                      AlertDialog(
                        title: Text("This should not be closed automatically"),
                        content:
                            Text("This should not be closed automatically"),
                        actions: <Widget>[
                          // ignore: deprecated_member_use
                          FlatButton(
                            child: Text("CLOSE"),
                            onPressed: () {
                              Get.back();
                            },
                          )
                        ],
                      ),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: Text(
                    "GetX Dialog",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    Get.to(GetXBack());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: const Text(
                    'GetX Next Screen (Route Management)',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    Get.offAll(AllItemsList());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: const Text(
                    'GetX Next Screen old screen remove',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    Get.changeTheme(
                        Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: const Text(
                    'GetX Change Theme',
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    c.increment();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: Obx(() => Text(
                        'GetX Controller use Click :${c.count}',
                        style: TextStyle(color: Colors.white),
                      ))),
            ])));
  }
}

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}
