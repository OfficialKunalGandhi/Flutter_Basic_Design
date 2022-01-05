import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget {
  final TextEditingController? controller;
  final bool? visble;
  final String? hint;
  const TextField1(
      {Key? key,
      required this.controller,
      required this.visble,
      required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: controller,
        obscureText: visble!,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            labelText: hint),
      ),
    );
  }
}
