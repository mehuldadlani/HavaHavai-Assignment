import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_tempelate/app/app.locator.dart';

import '../services/local_storage_service.dart';

@lazySingleton
class ThemeService {
  static const String key = "isDark";

  static final localStorage = locator<LocalStorageService>();

  final ValueNotifier<bool> brightnessListner =
      ValueNotifier(localStorage.read<bool>(key) ?? false);

  Brightness get brightness =>
      brightnessListner.value ? Brightness.dark : Brightness.light;

  void updateTheme(bool isDark) {
    brightnessListner.value = isDark;
    localStorage.write(key, brightnessListner.value);
  }
}
