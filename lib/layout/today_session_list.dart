import 'package:e_class/util/appConst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TodaySessionListScreen extends StatefulWidget {
  @override
  _TodaySessionListScreenState createState() => _TodaySessionListScreenState();
}

class _TodaySessionListScreenState extends State<TodaySessionListScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    var data = [
      {'name': 'Syzygy1', 'id': 'G001', 'subject': 'Science', 'medium': "EM"},
      {'name': 'vvvvv1', 'id': 'G001', 'subject': 'Maths', 'medium': "SM"},
      {'name': 'Syzygy2', 'id': 'G001', 'subject': 'Englis', 'medium': "EM"},
      {'name': 'vvvvv2', 'id': 'G001', 'subject': 'Science', 'medium': "SM"},
      {'name': 'Syzygy3', 'id': 'G001', 'subject': 'Science', 'medium': "SM"},
      {'name': 'vvvvv3', 'id': 'G001', 'subject': 'Science', 'medium': "SM"},
      {'name': 'Syzygy4', 'id': 'G001', 'subject': 'Science', 'medium': "SM"},
      {'name': 'vvvvv4', 'id': 'G001', 'subject': 'Science', 'medium': "SM"},
      {'name': 'Syzygy5', 'id': 'G001', 'subject': 'Science', 'medium': "SM"}
    ];

    setList(data);
  }

  List<Widget> _listOfTodaySession = new List();

  setList(data) async {
    data.forEach((i) {
      setState(() {
        _listOfTodaySession.add(
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, -1),
                        blurRadius: 8)
                  ]),
              width: CommonData.deviceWidth - 50,
              height: 255,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          ),
                        ),
                      ),
                      height: 40,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                i['subject'] + "  " + i['medium'],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: AppColors.color_2,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 5.0,
                                      bottom: 3.0,
                                      top: 3.0),
                                  child: Text(
                                    "MS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.white),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "2017 Theory",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 30,
                                child: Text(
                                  "[G2]",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black12,
                          width: 1.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: AppColors.color_2,
                          ),
                          width: 170,
                          height: 50,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.bookmark,
                                  color: AppColors.color_1,
                                ),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, "/DocumentScreen");
                                  },
                                  child: Text(
                                    "Attend Session",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          ),
                        ),
                      ),
                      height: 70,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "2020-06-21",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Session Details",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      height: 50,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.asset('images/teacher.jpg')),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Maths Science Teacher",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "08.30 - 23.30",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today Sessions'),
      ),
      body: Container(
        color: Color(0xffF2F3F4),
        child: Container(
          width: CommonData.deviceWidth,
          child: Column(
            children: <Widget>[
              Container(height: 10),
              Expanded(
                child: ListView(
                  children: _listOfTodaySession.map((card) => card).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
