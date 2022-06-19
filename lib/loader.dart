import 'dart:html';
import 'dart:js_util';

Future<void> loadJs() async {
  ScriptElement? script = window.document.getElementById('blah_js') as ScriptElement?;
  if (script == null) {
    script = ScriptElement()
      ..id = 'blah_js'
      ..src = '/blah.js'
      ..onLoad.listen(_jsLoaded);
    document.head!.append(script);
  }
}

void _jsLoaded(Event event) {
  print('Javascript has been loaded');
  print('property is: ${getProperty(window, 'blah')}');
}
