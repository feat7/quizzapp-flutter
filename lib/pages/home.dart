import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Picture Quiz App"),
      ),
      body: Column(
        children: <Widget>[
          /// Picture Grid
          Flexible(
            flex: 2,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                            color: Colors.blue
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.greenAccent,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                            color: Colors.red
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.yellowAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.black54,
            ),
          )
        ],
      ),
    );
  }
}
