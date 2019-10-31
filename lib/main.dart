import 'package:flutter/material.dart';
import 'package:quizzapp/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Picture Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder >{
        "/home": (context) => HomePage()
      }
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Username"),
              accountEmail: new Text("user@email.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            
            new ListTile(
              title: new Text("Coins:"),
              subtitle: Text("92", style: TextStyle(color: Colors.amber)),
              trailing: new Icon(Icons.monetization_on),
            ),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("Logout"),
              trailing: new Icon(Icons.close),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(children: [
        Stack(children: [
          Container(
            height: MediaQuery
              .of(context)
              .size
              .height - 82.0,
            width: MediaQuery
              .of(context)
              .size
              .width,
            color: Colors.transparent),
          Positioned(
            top: 75.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.0),
                  topRight: Radius.circular(45.0),
                ),
                color: Colors.white),
              height: MediaQuery
                .of(context)
                .size
                .height - 100.0,
              width: MediaQuery
                .of(context)
                .size
                .width)),
          
          Positioned(
            top: 30.0,
            left: (MediaQuery.of(context).size.width / 2) - 100.0,
            child:  ImageRotate()
          ),
          Positioned(
            top: 300.0,
            bottom: 50.0,
            left: 8.0,
            right: 8.0,
            child: Column(
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                            
                          },
                          child: new Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text("Play Game",
                              style: new TextStyle(
                                fontSize: 20.0, color: Colors.white))),
                        ),
                      ),
                    )
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                            
                          },
                          child: new Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text("Facebook",
                              style: new TextStyle(
                                fontSize: 20.0, color: Colors.white))),
                        ),
                      ),
                    )
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/home');
                            
                          },
                          child: new Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text("Multiplayer",
                              style: new TextStyle(
                                fontSize: 20.0, color: Colors.white))),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ]),
      
      ])
    );
  }
}


class ImageRotate extends StatefulWidget {
  @override
  _ImageRotateState createState() => new _ImageRotateState();
}

class _ImageRotateState extends State<ImageRotate>
  with SingleTickerProviderStateMixin {
  AnimationController animationController;
  
  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 7),
    );
    
    animationController.repeat();
  }
  
  @override
  Widget build(BuildContext context) {
    
    return AnimatedBuilder(
      animation: animationController,
      child: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/abcd.png'),
            fit: BoxFit.cover)),
        height: 200.0,
        width: 200.0),
      builder: (BuildContext context, Widget _widget) {
        return new Transform.rotate(
          angle: animationController.value * 6.3,
          child: _widget,
        );
      },
    );
  }
}

