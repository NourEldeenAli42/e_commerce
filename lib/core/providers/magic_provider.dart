import 'package:flutter/foundation.dart';

class MagicProvider extends ChangeNotifier {
  bool _isMagicEnabled = false;

  bool get isMagicEnabled => _isMagicEnabled;

  void toggleMagic() {
    _isMagicEnabled = !_isMagicEnabled;
    notifyListeners();
  }
}
