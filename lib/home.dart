import 'package:flutter/material.dart';
import 'package:jape_flutter/url_launcher.dart';
import 'package:jape_flutter/login_page.dart';

class Routes {
  String title;
  String route;

  Routes({this.title, this.route});
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  static String tag = 'home';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _login() {
    // This call to setState tells the Flutter framework that something has
    // changed in this State, which causes it to rerun the build method below
    // so that the display can reflect the updated values. If we changed
    // _counter without calling setState(), then the build method would not be
    // called again, and so nothing would appear to happen.
    Navigator.of(context).pushNamed(LoginPage.tag);
  }

  final List<Routes> routes = new List.generate(
      50,
      (i) => new Routes(
            title: 'Route $i',
            route: 'This is a route',
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
       itemCount : routes.length,
       itemBuilder : (context, index) {
         return ListTile(
           title: Text('${routes[index].title}'),
           onTap: () {
             Navigator.of(context).pushNamed(LoginPage.tag);
           }
         );
       }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _login,
        tooltip: 'Login',
        child: Icon(Icons.add_to_home_screen),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
