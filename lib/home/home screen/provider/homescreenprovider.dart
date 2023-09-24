import 'package:eqraa/home/home%20screen/provider/homescreenstate.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenProvider extends ChangeNotifier {
  HomeScreenState homeScreenState = HomeScreenState();

  void increment() {
    homeScreenState.conter++;
    notifyListeners();
  }

  void decrement() {
    homeScreenState.conter = 0;
    notifyListeners();
  }
}
