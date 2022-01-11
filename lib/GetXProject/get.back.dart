import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXBack extends StatelessWidget {
  const GetXBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
          onPressed: () {
            Get.back();
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          child: const Text(
            'GetX back Screen (Route Management)',
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
