import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebFornite extends StatefulWidget {
  const WebFornite({required Key key}) : super(key: key);

  @override
  WebForniteState createState() => WebForniteState();
}

class WebForniteState extends State<WebFornite> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://www.fortnite.com/',
      appBar: AppBar(
        title: const Text('Fornite.com'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
