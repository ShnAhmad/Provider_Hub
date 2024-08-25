import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier {
  double _sdValue = 1;
  double get sdValue => _sdValue;

  void setValue(double value) {
    _sdValue = value;
    notifyListeners();
  }
}
