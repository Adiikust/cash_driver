

import 'package:loginscreens/Controller/Export/export_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final data =MediaQuery.of(context);
    return  Scaffold(
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
                          buildAutoSizeText("Login"),
                          SizedBox(height: data.size.height * 0.024),
                          buildAutoSmallSizeText("Email"),
                          SizedBox(height: data.size.height * 0.012),
                          buildTextField(),
                          SizedBox(height: data.size.height * 0.020),
                          buildAutoSmallSizeText("Password"),
                          SizedBox(height: data.size.height * 0.012),
                          buildTextField(),
                          SizedBox(height: data.size.height * 0.005),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                               children:  [
                                 TextButton(onPressed: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotScreen()));

                                 }, child: const Text('Forgot Password?',style: TextStyle(color: Colors.black54,))),
                               ],
                           ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 27),
                            child: Column(
                              children: [
                                buildContainer("Login"),
                                SizedBox(height: data.size.height * 0.020),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildIconContainer((Icons.facebook)),
                                  buildIconContainer((Icons.facebook)),
                                  buildIconContainer((Icons.facebook)),
                                ],
                              ),
                                SizedBox(height: data.size.height * 0.020),
                                buildAutoSmallSizeText("Don’t have an account?"),
                                SizedBox(height: data.size.height * 0.020),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                                  },
                                    child: buildContainer("Sign Up")),
                                SizedBox(height: data.size.height * 0.020),
                                InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen()));
                                    },
                                    child: buildContainer("Just Check Profile Screen")),

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
