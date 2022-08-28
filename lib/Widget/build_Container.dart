import 'package:loginscreens/Controller/Export/export_screen.dart';

Container buildContainer(String text1) {
  return Container(
    alignment: Alignment.center,
    height: 40,
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.kBlack,
      borderRadius: BorderRadius.circular(20),
    ),
    child:  AutoSizeText(
      text1,
      style: const TextStyle(fontSize: 18,color: AppColors.kDarkGreen),
      maxLines: 1,
    ),
  );
}
