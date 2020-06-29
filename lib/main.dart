import 'package:e_class/route.dart';
import 'package:e_class/util/appConst.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTerms.projectName,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: AppColors.color_5,
          ),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Roboto',
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600),
            bodyText1: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto'),
          )),
      onGenerateRoute: (settings) => setRoute(settings),
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
