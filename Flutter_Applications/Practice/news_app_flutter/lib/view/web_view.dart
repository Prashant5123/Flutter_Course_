import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app_flutter/controller/loader.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'splash_screen.dart';



class WebView extends StatefulWidget {
  int index;
   
  WebView({super.key,required this.index});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController _controller;
    bool _isLoading = true;
   
 
  @override
  void initState() {
    super.initState();
    // Required for Android WebView compatibility
   

    _controller = WebViewController()
      ..loadRequest(Uri.parse(newsData["articles"][widget.index]["url"])) 
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              _isLoading = true; 
             
            });
          },
          onPageFinished: (url) {
            setState(() {
              _isLoading = false; 
            });
          },
          onWebResourceError: (error) {
            setState(() {
              _isLoading = false; 
            
            });
          },
        ),
    );

    



      

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.grey,
          backgroundColor: Colors.black,
          title: Text(
            "World News",
            style: GoogleFonts.sahitya(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          centerTitle: true,
          leading: Image.asset("assets/image.png", color: Colors.white),
        ),

      body:Stack(
        children: [
         WebViewWidget(
          controller:_controller,
        ),

        if(_isLoading)Loader.circularLoading()
        ]
      ),
    );
  }
}