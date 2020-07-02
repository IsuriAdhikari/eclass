import 'package:e_class/util/appConst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_class/layout/side_menu.dart';

class MainPageScreen extends StatefulWidget {
  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Welcom To Class'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
                child: Container(
                    width: CommonData.deviceWidth - 100,
                    child: Image.asset('images/eclass-welcome.png'))),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Container(
                    width: CommonData.deviceWidth - 100,
                    child: Text(
                        'සිසුල්කා ආයතනයේ ඔන්ලයින් ඉගැන්වීම් ඒකකය (Online Learning Platform) වෙත ඔබව සාදරයෙන් පිළිගනිමු.මෙහි සමාරම්භක සැසිය හෙට දින(මැයි 12, අඟහරුවාදා) උදේ 9.00ට පැවැත්වෙන අතර, එහිදී ඔබගේ ඉදිරි පාඩම්, විභාග සැළසුම් පිළිබඳව සහ ඔන්ලයින් ඉගැන්වීම් ඒකකය භාවිතා කරන ආකාරය පිළිබඳව සවිස්තරාත්මක විස්තරයක් ගෙන එන්නෙමු. එයට අනිවාර්යයෙන් සහභාගි වන්න',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.5,
                            color: AppColors.color_2,
                            fontWeight: FontWeight.w400,
                            fontSize: 14)))),
          ],
        ),
      ),
    );
  }
}
