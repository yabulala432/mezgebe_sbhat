import 'package:flutter/material.dart';

class BottomNavState with ChangeNotifier {
  int _currentIndex = 0;
  Map<String, dynamic> _params = {}; // New property to hold parameters

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners(); // Notify listeners of the change
  }

  Map<String, dynamic> get params => _params;

  void navigateToScreen2(Map<String, dynamic> params) {
    currentIndex = 1;
    _params = params; // Set the parameters
    notifyListeners();
  }
}
