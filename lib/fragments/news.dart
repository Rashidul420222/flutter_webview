import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class News extends StatelessWidget {
  final String newUrl = "https://ivari.ca/about-us/in-the-news/" ;
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: newUrl,
      javascriptMode: JavascriptMode.unrestricted,
      
    );
  }

}