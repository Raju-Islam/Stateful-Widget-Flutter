import 'package:flutter/material.dart';
void main(){
  runApp(new MyApp());
}
class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My App',
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        accentColor: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String mytext='Hallo Flutter';
  void _changetext(){
    setState(() {
      if(mytext.startsWith('H')){
        mytext='Welcome to Flutter app';
      }else{
        mytext='Hallo Flutter';
      }
    });
  }

  Widget _bodywidget(){
    return new Container(
      padding: const EdgeInsets.all(12.00),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(mytext,style: new TextStyle(
              fontSize: 17.00,
              color: Colors.white,
            ),),
            new RaisedButton(
              child: new Text('Clik',style: new TextStyle(
                color: Colors.white,
                fontSize: 17.00,
              ),),
              onPressed:_changetext,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(child: new Text('Home Page',style: new TextStyle(
          color: Colors.white,
        ),)),

      ),
      body:_bodywidget() ,
    );
  }
}


