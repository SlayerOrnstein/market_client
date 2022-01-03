import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

Map<String, dynamic> fixture(String name) {
  String fixture;

  try {
    fixture = _file(p.join('test', 'fixtures', name));
  } catch (err) {
    fixture = _file(p.join('fixtures', name));
  }

  return (json.decode(fixture) as Map<String, dynamic>)['payload']
      as Map<String, dynamic>;
}

String _file(String path) => File(path).readAsStringSync();
