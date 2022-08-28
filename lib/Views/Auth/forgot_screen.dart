import 'package:loginscreens/Controller/Export/export_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    final data =MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:  [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33,vertical: 50),
              child: Image.asset(ImagesPath.kLogin),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: AppColors.kDarkGreen,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children:  <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 36,horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                               InkWell(
                                  child: const Icon(Icons.arrow_back_ios,size: 25,),
                                 onTap: (){
                                   Navigator.pop(context);
                                 },
                               ),
                             SizedBox(height: data.size.height * 0.024),
                            buildAutoSizeText("Forgot Password"),
                            SizedBox(height: data.size.height * 0.024),
                            buildAutoSmallSizeText("Email"),
                            SizedBox(height: data.size.height * 0.024),
                            buildTextField(),
                            const SizedBox(height: 25),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 19,horizontal: 27),
                              child: buildContainer("Reset Password"),
                            )


                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
