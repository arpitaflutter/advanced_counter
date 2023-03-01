import 'package:flutter/material.dart';

class counter_provider extends ChangeNotifier
{
  int i=0;

  void increment()
  {
    i++;
    notifyListeners();
  }

  void decrement()
  {
    i--;
    notifyListeners();
  }

  void two_x()
  {
    i*=2;
    notifyListeners();
  }

  void three_x()
  {
    i*=3;
    notifyListeners();
  }
  void four_x()
  {
    i*=4;
    notifyListeners();
  }
}