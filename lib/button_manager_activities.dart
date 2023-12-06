// button_manager.dart
class ButtonManager {
  static final ButtonManager _instance = ButtonManager._internal();

  factory ButtonManager() {
    return _instance;
  }

  ButtonManager._internal();

  // Map to store screenButtonData for each screen
  Map<String, List<List<String>>> screenButtonDataMap = {};

  // Method to add user button for a specific screen
  void addUserButton(String screenKey, String label) {
    if (label.isNotEmpty) {
      screenButtonDataMap[screenKey] ??= [];

      if (screenButtonDataMap[screenKey]!.isEmpty ||
          (screenButtonDataMap[screenKey]!.last.length) >= 5) {
        screenButtonDataMap[screenKey]!.add([label]);
      } else {
        screenButtonDataMap[screenKey]!.last.add(label);
      }
    }
  }
}
