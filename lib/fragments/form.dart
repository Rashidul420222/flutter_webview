import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Forms extends StatelessWidget {
  final String formUrl = "https://ivari.ca/resources/faq/forms-and-guides";
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: formUrl,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

}