import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatelessWidget {
  final String homeUrl = "https://ivari.ca" ;
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: homeUrl,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

}