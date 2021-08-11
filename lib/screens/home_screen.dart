import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen();
  final Completer<WebViewController> controller= Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wiki Explorer')),
      body: WebView(
        initialUrl: 'https://en.wikipedia.org/wiki/sunflower',
        onWebViewCreated: (WebViewController wvc){
          controller.complete(wvc);
        },
      )
    );
  }
}

