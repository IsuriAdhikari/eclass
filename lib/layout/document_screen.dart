import 'package:flutter/material.dart';

class DocumentScreen extends StatefulWidget {
  @override
  _DocumentScreenState createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen>
    // with AutomaticKeepAliveClientMixin<DocumentScreen> 
    {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab2'),
      ),
      body: Center(
        child: Text(
          'This is content of Tab2',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  // @override
  // bool get wantKeepAlive => true;
}
