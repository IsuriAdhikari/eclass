import 'package:e_class/util/appConst.dart';
import 'package:flutter/material.dart';

class InstituteListScreen extends StatefulWidget {
  @override
  _InstituteListScreenState createState() => _InstituteListScreenState();
}

class _InstituteListScreenState extends State<InstituteListScreen> {
  List _dataListOne = new List();
  List _dataListTwo = new List();

  @override
  void initState() {
    super.initState();

    // _isLoggged();

    var data = [
      {'name': 'Syzygy1', 'id': 'G001'},
      {'name': 'vvvvv1', 'id': 'G001'},
      {'name': 'Syzygy2', 'id': 'G001'},
      {'name': 'vvvvv2', 'id': 'G001'},
      {'name': 'Syzygy3', 'id': 'G001'},
      {'name': 'vvvvv3', 'id': 'G001'},
      {'name': 'Syzygy4', 'id': 'G001'},
      {'name': 'vvvvv4', 'id': 'G001'},
      {'name': 'Syzygy5', 'id': 'G001'}
    ];

    int dataListCount = 0;

    data.forEach((i) {
      if (dataListCount.isEven) {
        setState(() {
          _dataListOne.add(i);
        });
      } else {
        setState(() {
          _dataListTwo.add(i);
        });
      }

      dataListCount = dataListCount + 1;
    });

    setList(_dataListOne, _dataListTwo);
  }

  var loggingStatus = false;

  _isLoggged() {
    if (loggingStatus) {
      // Timer(
      //   Duration(seconds: 2), () =>
      //   Navigator.pushNamed(context, "/MainPage")
      //   );
    } else {
      // Timer(
      //   Duration(seconds: 2), () =>
      //   Navigator.pushNamed(context, "/LoginScreen")
      //   );

    }
  }

  int dataCount = 0;

  List<Widget> _listOfInstitute = new List();

  setList(_dataListOne, _dataListTwo) async {
    int datalength = _dataListOne.length;

    print(CommonData.deviceWidth);

    if (datalength.isOdd) {
      _dataListTwo.add({'name': 'No_Data', 'id': '0000'});
    } else {}

    for (var i = 0; i < _dataListOne.length; i++) {
      setState(() {
        _listOfInstitute.add(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: (_dataListOne[i]['name'] == "No_Data")
                    ? Container(
                        width: (CommonData.deviceWidth * 0.5) - 20,
                        height: 200,
                        color: AppColors.color_5,
                      )
                    : Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: AppColors.color_4,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(0, -1),
                                  blurRadius: 8)
                            ]),
                        width: (CommonData.deviceWidth * 0.5) - 20,
                        height: 200,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              child: Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 48.0,
                                  child: Image.asset('images/syzygyLogo.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 15.0),
                              width: 140,
                              height: 30,
                              child: Center(
                                child: Text(
                                  _dataListOne[i]['name'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                            Container(
                                height: 30,
                                width: 70,
                                child: Center(
                                  child: FlatButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(28.0)),
                                    splashColor: AppColors.color_2,
                                    color: AppColors.color_2,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.color_1,
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, "/LoginScreen",
                                          arguments: {
                                            "name": _dataListOne[i]['name'],
                                            "id": _dataListOne[i]['id'],
                                          });
                                    },
                                  ),
                                ))
                          ],
                        ),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: (_dataListTwo[i]['name'] == "No_Data")
                    ? Container(
                        width: (CommonData.deviceWidth * 0.5) - 20,
                        height: 200,
                        color: AppColors.color_5,
                      )
                    : Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: AppColors.color_4,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black45,
                                  offset: Offset(0, -1),
                                  blurRadius: 8)
                            ]),
                        width: (CommonData.deviceWidth * 0.5) - 20,
                        height: 200,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              child: Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 48.0,
                                  child: Image.asset('images/sisulkaLogo.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 15.0),
                              width: 140,
                              height: 30,
                              child: Center(
                                child: Text(
                                  _dataListTwo[i]['name'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                            Container(
                                height: 30,
                                width: 70,
                                child: Center(
                                  child: FlatButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(28.0)),
                                    splashColor: AppColors.color_2,
                                    color: AppColors.color_2,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: AppColors.color_1,
                                    ),
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, "/LoginScreen",
                                          arguments: {
                                            "name": _dataListTwo[i]['name'],
                                            "id": _dataListTwo[i]['id'],
                                          });
                                    },
                                  ),
                                ))
                          ],
                        ),
                      ),
              ),
            ],
          ),
        );
      });

      dataCount = dataCount + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.color_5,
        child: Container(
          width: CommonData.deviceWidth,
          child: Column(
            children: <Widget>[
              Container(height: AppBar().preferredSize.height),
              Expanded(
                child: ListView(
                  children: _listOfInstitute.map((card) => card).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
