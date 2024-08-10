import 'package:flutter/material.dart';

class NumberIncreasingProvider extends ChangeNotifier{

  int number=0;

  void addNumber(){
    number++;
    notifyListeners();
  }

}