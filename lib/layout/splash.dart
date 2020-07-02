import 'package:e_class/util/appConst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
    CommonData.deviceWidth = MediaQuery.of(context).size.width;
    CommonData.deviceHeight = MediaQuery.of(context).size.height;

    return MediaQuery(
      data: MediaQueryData(),
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.2),
                          child: Center(
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.3,
                              width: MediaQuery.of(context).size.height * 0.6,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: new DecorationImage(
                                  image: AssetImage('images/eClassLogo.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width - 100,
                            child: Text(
                                "We are working on expanding our client base, to make you reap the benefits of applying newest yet feasible technologies. You can always grow with us.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 1.5,
                                    color: AppColors.color_2,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, "/InstituteListScreen");
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width - 100,
                              child: Text("Go to Institute.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      height: 1.5,
                                      color: AppColors.color_2,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
