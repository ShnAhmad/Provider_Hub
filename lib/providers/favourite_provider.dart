import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier {
  List<int> _selectedItems = [];

  List<int> get selectedItems => _selectedItems;

  void selectItem(int value) {
    if (_selectedItems.contains(value)) {
      _selectedItems.remove(value);
    } else {
      _selectedItems.add(value);
    }
    notifyListeners();
  }
}
