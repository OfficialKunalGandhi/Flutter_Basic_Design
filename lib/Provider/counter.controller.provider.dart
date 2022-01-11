import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  int _counter = 0;
  int get getCounter => _counter;
  void increment() {
    _counter++;
    notifyListeners();
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    return super.debugDescribeChildren();
  }
}
