import 'package:stacked/stacked.dart';

class PhrVM extends BaseViewModel {
  bool isHeaderExpanded = false;
  onHeaderExpansion(bool input) {
    isHeaderExpanded = input;
    notifyListeners();
  }
}
