import 'package:loginscreens/Controller/Export/export_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                            buildAutoSizeText("Sign Up"),
                            SizedBox(height: data.size.height * 0.020),
                            buildAutoSmallSizeText("Name"),
                            SizedBox(height: data.size.height * 0.012),
                            buildTextField(),
                            SizedBox(height: data.size.height * 0.020),
                            buildAutoSmallSizeText("Email"),
                            SizedBox(height: data.size.height * 0.012),
                            buildTextField(),
                            SizedBox(height: data.size.height * 0.020),
                            buildAutoSmallSizeText("Address"),
                            SizedBox(height: data.size.height * 0.012),
                            buildTextField(),
                            SizedBox(height: data.size.height * 0.020),
                            buildAutoSmallSizeText("Contact No"),
                            SizedBox(height: data.size.height * 0.012),
                            buildTextField(),
                            SizedBox(height: data.size.height * 0.020),
                            buildAutoSmallSizeText("Password"),
                            SizedBox(height: data.size.height * 0.012),
                            buildTextField(),
                            SizedBox(height: data.size.height * 0.020),
                            buildAutoSmallSizeText("Confirm Password"),
                            SizedBox(height: data.size.height * 0.012),
                            buildTextField(),
                            SizedBox(height: data.size.height * 0.020),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 19,horizontal: 27),
                              child: Column(
                                children: [
                                  buildContainer("Sign Up"),
                                  SizedBox(height: data.size.height * 0.024),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      buildIconContainer((Icons.facebook)),
                                      buildIconContainer((Icons.facebook)),
                                      buildIconContainer((Icons.facebook)),
                                    ],
                                  ),
                                  SizedBox(height: data.size.height * 0.024),
                                  buildAutoSmallSizeText("Already  have an account?"),
                                  SizedBox(height: data.size.height * 0.024),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                      child: buildContainer("Login")),

                                ],
                              ),
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
