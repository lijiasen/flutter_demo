import 'package:flutter/material.dart';
import 'package:jape_flutter/home.dart';

class ContentPage extends StatelessWidget {

    void _login() {
      CircularProgressIndicator();
     
  }
  final Article article;
  ContentPage(this.article);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('${article.title}')
      ),body:  Padding(
        padding:  EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Text('${article.content}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new RaisedButton(
                  child: Icon(Icons.linked_camera),
                  onPressed: () {
                    Navigator.pop(context,'Like');
                  },
                ),
                new RaisedButton(
                  child: Text('Unlike'),
                  onPressed: () {
                    Navigator.pop(context,'Unlike');
                  },
                )
              ],
              )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _login,
        tooltip: 'Login',
        child: Icon(Icons.add_to_home_screen),
      ), // This trailing comma makes auto-formatting nicer for build
    );
  }
}