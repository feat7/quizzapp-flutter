import 'package:flutter/material.dart';
import 'package:quizzapp/model/picture.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Picture> allPictures = [
    Picture(keywords: ["ice","cold","blue","snow","frozen","sky"], imageURL: "https://i.ibb.co/g73cdMv/adventure-blue-calm-waters-300857.jpg"),
    Picture(keywords: ["ice","cold","frozen","lemon","fruit"], imageURL: "https://i.ibb.co/qmV8hjT/lemons-ice-water-summer-90763.jpg"),
    Picture(keywords: ["allergy","cold","tissue"], imageURL: "https://i.ibb.co/tLnfkD8/allergies-allergy-cold-41284.jpg"),
    Picture(keywords: ["tissue","gift","present","christmas"], imageURL: "https://i.ibb.co/GCVkptN/bags-black-friday-christmas-749353.jpg"),
    Picture(keywords: ["cold","tree","snow"], imageURL: "https://i.ibb.co/gDS6rz5/bird-s-eye-view-bright-close-up-1438761.jpg"),
  ];

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
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Image.network(allPictures[1].imageURL),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Image.network(allPictures[2].imageURL),
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
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Image.network(allPictures[3].imageURL),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: FittedBox(
                          fit: BoxFit.fill,
                          child: Image.network(allPictures[4].imageURL),
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
