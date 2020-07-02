import 'package:e_class/util/appConst.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/sisulkaLogo.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.record_voice_over),
            title: ExpansionTile(
              title: Text(
                "My Lessons",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.color_2),
              ),
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/TodaySessionListScreen");
                    },
                    child: Text('Toady',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color_2))),
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, "/UpCommimgSessionListScreen");
                    },
                    child: Text('Upcomming',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.color_2))),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Classes',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.color_2)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Payment',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.color_2)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.supervisor_account),
            title: Text('Profile',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.color_2)),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.color_2)),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
