import 'package:loginscreens/Controller/Export/export_screen.dart';

Container buildIconContainer(IconData icon) {
  return Container(
    alignment: Alignment.center,
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      color: AppColors.kBlack,
      borderRadius: BorderRadius.circular(20),
    ),
    child:  Icon(icon,color: Colors.white,), /*Text(
                                    style: const TextStyle(
                                      color: AppColors.kBlue,
                                      fontSize: 17,
                                    ),
                                  ),*/
  );
}