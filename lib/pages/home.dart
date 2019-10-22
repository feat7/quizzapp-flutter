import 'package:flutter/material.dart';

import '../model/picture.dart';

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
                        child: Image.network(allPictures[0].imageURL)
                      ),
                      Flexible(
                        flex: 1,
                        child: Image.network(allPictures[1].imageURL)
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
                        child: Image.network(allPictures[2].imageURL)
                      ),
                      Flexible(
                        flex: 1,
                        child: Image.network(allPictures[3].imageURL)
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
