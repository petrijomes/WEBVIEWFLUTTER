import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebYoutube extends StatefulWidget {
  WebYoutube({required Key key}) : super(key: key);

  @override
  WebYoutubeState createState() => WebYoutubeState();
}

class WebYoutubeState extends State<WebYoutube> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url:
          'https://www.youtube.com/playlist?list=PLyL5rQLuUHayBnxXww_gMAb7Q9evwkp58',
      appBar: AppBar(
        title: Text('Youtube'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
