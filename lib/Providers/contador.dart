import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _count = 0;
  getCount() => _count;

  Color color = Colors.grey.shade300;
  setColor() => color = Colors.grey.shade300;

  void cambiarColor(Color tono) {
    color = tono;
    notifyListeners();
  }

  void resetCount() {
    _count = 0;
    notifyListeners();
  }

  void incrementCounter() {
    _count++;
    notifyListeners();
  }

  void decrementCounter() {
    _count--;
    notifyListeners();
  }
}
