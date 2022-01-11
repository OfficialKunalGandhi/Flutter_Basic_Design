import 'package:flutter/material.dart';
import 'package:flutter_basic_designs/Provider/counter.controller.provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 108.0,
        title: const Text("Flutter Provider",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30)),
      ),
      body: Container(
        child: Center(
            child: SizedBox(
                width: 150,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    context.read<Counter>().increment();
                  },
                  onLongPress: () {
                    Get.snackbar("Add Numbers", "Click Add Number Button",
                        snackPosition: SnackPosition.BOTTOM);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  child: Text(
                      "Add Number : ${context.watch<Counter>().getCounter}",
                      style: TextStyle(color: Colors.white)),
                ))),
      ),
    );
  }
}
