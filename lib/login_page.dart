import 'package:flutter/material.dart';
import 'package:jape_flutter/url_launcher.dart';

class LoginPage extends StatefulWidget {
  final String title;
  static String tag = 'login-page';

  LoginPage({Key key, this.title}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  
  @override
  Widget build(BuildContext context) {

    final logo = Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 60.0,
      child: Image.asset('assets/logo.png'),
    ),
  );

   TextFormField account = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    decoration: InputDecoration(
        hintText: '账号',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final password = TextFormField(
    autofocus: false,
    obscureText: true,
    decoration: InputDecoration(
        hintText: '密码',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            color: Colors.green,
            child: Text('登录',style: TextStyle(color: Colors.white)),
            onPressed: (){
              Navigator.of(context).pushNamed(UrlLaunch.tag);
            },
          ),
          ));

  final forgetLabel = FlatButton(
    child: Text('忘记密码?', style: TextStyle(color: Colors.black)),
    onPressed: () {},
  );
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            account,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgetLabel
          ],
        ),
      ),
    );
  }
}
