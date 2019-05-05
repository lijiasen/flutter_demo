import 'package:flutter/material.dart';
import 'package:jape_flutter/home.dart';
import 'package:jape_flutter/login_page.dart';
import 'package:jape_flutter/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


final routes = <String,WidgetBuilder> {
  LoginPage.tag : (context) => LoginPage(title: '足彩'),
  MyHomePage.tag : (context) => MyHomePage(title: '足彩'),
  UrlLaunch.tag : (context) => UrlLaunch(title: '主页')
};

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '足彩',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: routes,
      home: MyHomePage(title: '例子'),
    );
  }
}
