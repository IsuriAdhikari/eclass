import 'dart:async';

import 'package:e_class/util/appConst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  final String selectedUrl = "https://player.vimeo.com/video/424505930";
  // final String selectedUrl = "https://www.youtube.com/embed/WsptdUFthWI";

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Video'),
        ),
        body:

            //   Container(
            //     width: CommonData.deviceHeight - 100,
            //     height: CommonData.deviceWidth - 100,
            //     color: Colors.amber,
            // child: Center(
            //   child: WebView(
            //     // initialUrl: urlData,
            //     initialUrl: Uri.dataFromString('<iframe src="https://player.vimeo.com/video/424505930" width="400" height="200" frameborder="0"></iframe>', mimeType: 'text/html').toString(),
            //     javascriptMode: JavascriptMode.unrestricted,
            //     onWebViewCreated: (WebViewController webViewController) {
            //             _controller.complete(webViewController);
            //           },
            //   ),
            // )
            // ),
            Container(
          child: Container(
            height: CommonData.deviceWidth - 50,
            width: CommonData.deviceHeight - 50,
            child: WebView(
              initialUrl: selectedUrl,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
            ),
          ),
        ));
  }
}
