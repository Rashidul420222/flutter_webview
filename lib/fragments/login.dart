import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Login extends StatelessWidget {
  final String loginUrl = "https://securewebapp.ivari.ca/usermanagement/account/login/en" ;
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: loginUrl,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

}