import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CompanyInfo extends StatelessWidget {
  final String companyUrl = "https://ivari.ca/about-us/corporate-information/";
  @override
  Widget build(BuildContext context) {
  
    return  WebView(
      initialUrl: companyUrl ,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

}