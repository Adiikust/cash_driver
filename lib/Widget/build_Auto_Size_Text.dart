

import 'package:loginscreens/Controller/Export/export_screen.dart';

AutoSizeText buildAutoSizeText(String text1) {
  return  AutoSizeText(
    text1,
    style: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
    maxLines: 1,
  );
}