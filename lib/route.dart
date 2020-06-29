import 'package:flutter/material.dart';
import 'layout/institute_list_screen.dart';
import 'layout/login_screen.dart';
import 'layout/main_page.dart';
import 'layout/splash.dart';
import 'layout/video_screen.dart';

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
          builder: (BuildContext context) =>
              MainPageScreen(),
        );
      }
      case '/VideoScreen':
      {
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) =>
              VideoScreen(),
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
          builder: (BuildContext context) =>
              InstituteListScreen(),
        );
      }
      

    default:
      {
        return null;
      }
  }
}
