import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Career extends StatelessWidget {
  final String careerURL ="https://ivari.ca/about-us/career-job-postings/";
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: careerURL ,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

}