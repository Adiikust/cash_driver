import 'package:loginscreens/Controller/Export/export_screen.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
 final List<WeeklyOverView> weeklyData =[
  WeeklyOverView("1", 20, Colors.black),
  WeeklyOverView("2", 30, Colors.deepPurple),
  WeeklyOverView("3", 40, Colors.pink),
  WeeklyOverView("4", 50, Colors.green),
  WeeklyOverView("5", 60, Colors.yellow),
  WeeklyOverView("6", 100, Colors.lightBlue),
];

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    List<charts.Series<WeeklyOverView,String>> series=[
  charts.Series(
    data: weeklyData,
    id: "Adnan",
    domainFn:(pops,_)=>pops.year,
    measureFn: (pops,_)=>pops.pOP,
    colorFn: (pops,_)=>charts.ColorUtil.fromDartColor(pops.barColor),
  )
    ];
    return Scaffold(
      appBar: AppBar(elevation: 0,),
      backgroundColor: AppColors.kDarkGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  child: Image.asset(ImagesPath.kPerson,fit: BoxFit.fill,),
                ),
                SizedBox(height: data.size.height * 0.007),
                buildAutoSmallSizeText("Hello!"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: data.size.height * 0.015),
                      buildAutoSmallSizeText("Full Name"),
                      SizedBox(height: data.size.height * 0.012),
                      buildTextField(),
                      SizedBox(height: data.size.height * 0.020),
                      buildAutoSmallSizeText("Email"),
                      SizedBox(height: data.size.height * 0.012),
                      buildTextField(),
                      SizedBox(height: data.size.height * 0.020),
                      buildAutoSmallSizeText("Age"),
                      SizedBox(height: data.size.height * 0.012),
                      buildTextField(),
                      SizedBox(height: data.size.height * 0.020),
                      buildAutoSizeText("Weekly OverView"),
                      SizedBox(height: data.size.height * 0.020),
                      Column(
                        children: [
                          Container(
                            height: data.size.height /2,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: AppColors.kWhite,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: charts.BarChart(series),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class WeeklyOverView{
  final String year;
  final int pOP;
  final Color barColor;

  WeeklyOverView(this.year, this.pOP, this.barColor);

}