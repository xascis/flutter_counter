import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  void increaseCounter() {
    counter += 1;
    notifyListeners();
  }

  void decreaseCounter() {
    counter -= 1;
    notifyListeners();
  }
}
