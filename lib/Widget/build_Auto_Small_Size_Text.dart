import 'package:loginscreens/Controller/Export/export_screen.dart';

AutoSizeText buildAutoSmallSizeText(String text1) {
  return  AutoSizeText(
    text1,
    style: const TextStyle(fontSize: 16,),
    maxLines: 1,
  );
}