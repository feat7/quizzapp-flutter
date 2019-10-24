import 'package:flutter/material.dart';

import '../model/picture.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _letters = ['', '', '', '', ''];
  List<String> _unusedLetters = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Picture Quiz App"),
        backgroundColor: Color(0xFF33404c),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 4,
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.grey[700]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.network(
                          allPictures[0].imageURL)
                      ),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.grey[700]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.network(allPictures[1].imageURL)
                      ),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.grey[700]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.network(allPictures[2].imageURL)
                      ),
                    )
                  ),
                  Container(
                    margin: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.grey[700]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.network(allPictures[3].imageURL)
                      ),
                    )
                  ),
                ],
              ),
            )
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _letters.length,
                  cacheExtent: 0,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext cxt, int number) {
                    return Center(
                      child: IconButton(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(0),
                        splashColor: Colors.black,
                        onPressed: () {
                          setState(() {
                            if(_letters[number] != '') {
                              for(int i = 0; i < _unusedLetters.length; i ++)
                                if(_unusedLetters[i] == '') {
                                  _unusedLetters[i] = _letters[number];
                                  break;
                                }
                              _letters[number] = '';
                            }
                          });
                        },
                        icon: SizedBox(
                          width: 45,
                          height: 45,
                          child: Card(
                            borderOnForeground: true,
                            color: Colors.white,
                            child: Center(child: Text(
                              _letters[number],
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ),
          Flexible(
            flex: 2,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 28,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                    child: Column(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: _unusedLetters.length~/2,
                                  itemBuilder: (BuildContext ctxt, int number) {
                                    return Padding(
                                      padding: const EdgeInsets.all(1),
                                      child: IconButton(
                                        color: Colors.white,
                                        splashColor: Colors.black,
                                        onPressed: () {
                                          setState(() {
                                            int _presentIndex = -1;
                                            for(int i = 0; i < _letters.length; i ++)
                                              if(_letters[i] == '') {
                                                _presentIndex = i;
                                                break;
                                              }
                                            if(_presentIndex != _letters.length && _unusedLetters[number] != '' && _presentIndex != -1) {
                                              _letters[_presentIndex] = _unusedLetters[number];
                                              _presentIndex++;
                                              _unusedLetters[number] = '';
                                            }
                                          });
                                        },
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(0),
                                        icon: SizedBox(
                                          height: 55,
                                          width: 55,
                                          child: Card(
                                            elevation: 0,
                                            child: Padding(
                                              padding: EdgeInsets.all(12),
                                              child: Center(
                                                child: Text(
                                                  _unusedLetters[number],
                                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                ),
                                              )
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: _unusedLetters.length~/2,
                                  itemBuilder: (BuildContext ctxt, int number) {
                                    return Padding(
                                      padding: const EdgeInsets.all(1),
                                      child: IconButton(
                                        color: Colors.white,
                                        splashColor: Colors.black,
                                        onPressed: () {
                                          setState(() {
                                            int _presentIndex = -1;
                                            for(int i = 0; i < _letters.length; i ++)
                                              if(_letters[i] == '') {
                                                _presentIndex = i;
                                                break;
                                              }
                                            if(_presentIndex != _letters.length && _unusedLetters[_unusedLetters.length~/2 + number] != '' && _presentIndex != -1) {
                                              _letters[_presentIndex] = _unusedLetters[_unusedLetters.length~/2 + number];
                                              _presentIndex++;
                                              _unusedLetters[_unusedLetters.length~/2 + number] = '';
                                            }
                                          });
                                        },
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(0),
                                        icon: SizedBox(
                                          height: 55,
                                          width: 55,
                                          child: Card(
                                            elevation: 0,
                                            child: Padding(
                                              padding: EdgeInsets.all(12),
                                              child: Center(
                                                child: Text(
                                                  _unusedLetters[_unusedLetters.length~/2 + number],
                                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                ),
                                              )
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 5,
                  child: SizedBox(
                      height: 150,
                      child: Card(
                        margin: EdgeInsets.fromLTRB(0, 10, 20, 10),
                        color: Colors.green,
                        elevation: 3,
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Center(
                            child: Text('H\n I\nN\nT',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )
                        ),
                      ),
                    ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}