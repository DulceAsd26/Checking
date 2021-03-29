import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'fingerprint': Icons.fingerprint,
  'account_box': Icons.account_box,
  'settings': Icons.settings,
  'note_add': Icons.note_add,
};

Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Colors.blue,
  );
}
