@JS()
library dart_interopt_check;

import 'package:flutter/widgets.dart';
import 'package:inject_js/inject_js.dart' as InjectJS;
import 'package:js/js.dart';
import 'package:js/js_util.dart';

@JS('globalThis')
external Object _window;

Future<void> initDartInteropt(String packageName, String jsFileName) async {
  // WidgetsFlutterBinding.ensureInitialized();
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await InjectJS.importLibrary(
        'assets/packages/$packageName/assets/$jsFileName');
    await _waitFor(packageName);
  } catch (e) {
    print(e.toString());
  }
}

Future<void> _waitFor(String packageName,
    [Duration sleep = const Duration(milliseconds: 10)]) async {
  while (true) {
    if (hasProperty(_window, 'dartInteropt')) {
      Object dartInteropt = getProperty(_window, 'dartInteropt');
      if (hasProperty(dartInteropt, packageName)) {
        return;
      }
    }
    await Future.delayed(sleep);
  }
}
