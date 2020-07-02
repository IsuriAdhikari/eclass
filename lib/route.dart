import 'package:flutter/material.dart';
import 'layout/document_screen.dart';
import 'layout/institute_list_screen.dart';
import 'layout/login_screen.dart';
import 'layout/main_page.dart';
import 'layout/splash.dart';
import 'layout/video_screen.dart';
import 'layout/today_session_list.dart';
import 'layout/upcomming_session_list.dart';

setRoute(settings) {
  switch (settings.name) {
    case '/':
      {
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => SplashScreen(),
        );
      }

    case '/MainPage':
      {
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => MainPageScreen(),
        );
      }
    case '/VideoScreen':
      {
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => VideoScreen(),
        );
      }

    case '/LoginScreen':
      {
        var arguments = settings.arguments;

        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => LoginScreen(arguments),
        );
      }

    case '/InstituteListScreen':
      {
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => InstituteListScreen(),
        );
      }

    case '/TodaySessionListScreen':
      {
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => TodaySessionListScreen(),
        );
      }
    case '/UpCommimgSessionListScreen':
      {
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => UpCommimgSessionListScreen(),
        );
      }
    case '/DocumentScreen':
      {
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => DocumentScreen(),
        );
      }

    default:
      {
        return null;
      }
  }
}
