import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLaunch extends StatefulWidget {

    UrlLaunch({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  static String tag = 'launch';
  @override
  _UrlLaunchState createState() => _UrlLaunchState();
}

class _UrlLaunchState extends State<UrlLaunch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: _luanchURL,
          child: Text('Show Fullter HomePage'),
        )
      ),
    );
  }

  _luanchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}