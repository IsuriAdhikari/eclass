import 'package:e_class/util/appConst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DocumentScreen extends StatefulWidget {
  @override
  _DocumentScreenState createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  var attachmentLength = 0;
  var videoLength = 0;
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    var dataAttachment = [
      {'name': 'Attachment 01', 'id': 'G001', 'date': '2020-06-21'},
      {'name': 'Attachment 02', 'id': 'G001', 'date': '2020-06-21'},
      {'name': 'Attachment 03', 'id': 'G001', 'date': '2020-06-21'},
      {'name': 'Attachment 04', 'id': 'G001', 'date': '2020-06-21'},
      {'name': 'Attachment 05', 'id': 'G001', 'date': '2020-06-21'}
    ];
    var dataVideo = [
      {'name': 'Video 01', 'id': 'G001', 'date': '2020-06-21'},
      {'name': 'Video 02', 'id': 'G001', 'date': '2020-06-21'},
      {'name': 'Video 03', 'id': 'G001', 'date': '2020-06-21'},
      {'name': 'Video 04', 'id': 'G001', 'date': '2020-06-21'},
    ];

    setList(dataAttachment);
    setListVideo(dataVideo);
    setState(() {
      attachmentLength = dataAttachment.length;
      videoLength = dataVideo.length;
    });
  }

  List<Widget> _listOfTodaySession = new List();
  List<Widget> _listOfTodaySessionVideo = new List();

  setList(data) async {
    data.forEach((i) {
      setState(() {
        _listOfTodaySession.add(
          Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300],
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset('images/folders.jpg'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          i['date'],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          i['name'],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Icon(
                      Icons.file_download,
                      color: Colors.blue,
                    ),
                  )
                ],
              )),
        );
      });
    });
  }

  setListVideo(data) async {
    data.forEach((i) {
      setState(() {
        _listOfTodaySessionVideo.add(
          Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300],
                        width: 1.0,
                      ),
                    ),
                    child: Image.asset('images/folders.jpg'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          i['date'],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          i['name'],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Session Details'),
      ),
      body: Container(
        color: Color(0xffF2F3F4),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(height: 10),
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColors.white,
                    ),
                    width: CommonData.deviceWidth - 50,
                    height: CommonData.deviceHeight - 120,
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
                            height: 50,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      "2020-06-21",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.black),
                                    ),
                                    Text(
                                      "08.30 - 23.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.black),
                                    ),
                                  ],
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
                            height: 180,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Container(
                                            height: 60,
                                            width: 60,
                                            child: Image.asset(
                                                'images/teacher.jpg')),
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "Science" + "   " + "EM",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors.black),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5)),
                                                    color: AppColors.color_2,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0,
                                                            right: 5.0,
                                                            bottom: 3.0,
                                                            top: 3.0),
                                                    child: Text(
                                                      "MS",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors.white),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "2017 Theory",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: AppColors.black),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  width: 90,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5)),
                                                    color: Colors.amber,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0,
                                                            right: 5.0,
                                                            bottom: 3.0,
                                                            top: 6.0),
                                                    child: Text(
                                                      "On Going",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors.white),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              child: Text(
                                                "From : " +
                                                    "Maths Science Teacher",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        color: AppColors.color_2,
                                      ),
                                      width: 170,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.bookmark,
                                              color: AppColors.color_1,
                                            ),
                                            FlatButton(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, "/VideoScreen");
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Container(
                                height: 500,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.attach_file),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    attachmentLength.toString(),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: AppColors.black),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: Text(
                                                    "Attachments",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: AppColors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    attachmentLength.toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors.black),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: Text(
                                                    "Class Materials | Download",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              height:
                                                  CommonData.deviceHeight - 550,
                                              width:
                                                  CommonData.deviceWidth - 100,
                                              child: Column(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Scrollbar(
                                                      child: ListView(
                                                        children:
                                                            _listOfTodaySession
                                                                .map((card) =>
                                                                    card)
                                                                .toList(),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.play_arrow),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    videoLength.toString(),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: AppColors.black),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: Text(
                                                    "Video Sessions",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: AppColors.black),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 2.0),
                                                  child: Text(
                                                    "| Descriptions",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: AppColors.black),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              height:
                                                  CommonData.deviceHeight - 550,
                                              width:
                                                  CommonData.deviceWidth - 100,
                                              child: Column(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: Scrollbar(
                                                      child: ListView(
                                                        children:
                                                            _listOfTodaySessionVideo
                                                                .map((card) =>
                                                                    card)
                                                                .toList(),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
