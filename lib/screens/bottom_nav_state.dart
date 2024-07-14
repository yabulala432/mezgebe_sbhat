import 'package:flutter/material.dart';

class BottomNavState with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
    // Notify listeners of the change
  }

  void navigateToScreen2() {
    currentIndex = 1;
    notifyListeners();
  }

  void navigateToScreen1() {
    currentIndex = 0;
    notifyListeners();
  }
}
