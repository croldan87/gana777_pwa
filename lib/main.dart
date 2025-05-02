import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const Gana777App());
}

class Gana777App extends StatelessWidget {
  const Gana777App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gana777Home(),
    );
  }
}

class Gana777Home extends StatefulWidget {
  const Gana777Home({super.key});

  @override
  State<Gana777Home> createState() => _Gana777HomeState();
}

class _Gana777HomeState extends State<Gana777Home> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadRequest(Uri.parse('https://gana777.com/'))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(controller: _controller),
    );
  }
}
