import 'package:flutter/material.dart';
import 'package:news_app/splash_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebView extends StatefulWidget {
  int index;
  WebView({super.key,required this.index});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController _controller;
  @override
  void initState() {
    super.initState();
    // Required for Android WebView compatibility
    _controller = WebViewController()
      ..loadRequest(Uri.parse(newsData["results"][widget.index]["link"])) // Replace with your desired URL
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
       backgroundColor: const Color.fromARGB(255, 180, 224, 255),
       automaticallyImplyLeading: false,
      ),

      body:WebViewWidget(
        controller: _controller,
      ),
    );
  }
}