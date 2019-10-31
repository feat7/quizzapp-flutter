import 'package:flutter/material.dart';

import '../model/picture.dart';
import '../model/picture_manage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
	
  List<String> _letters = new List<String>();
  List<String> _unusedLetters = PictureManager().getPicture(2).letters;
  String _answer = PictureManager().getPicture(2).answer;
  List<String> _imageURLs = PictureManager().getPicture(2).imageURLs;

  @override
  Widget build(BuildContext context) {
    if (_letters.length == 0)
      for (int i = 0; i < _answer.length; i++) _letters.add('');
    return Scaffold(
      appBar: AppBar(
        title: Text("Picture Quiz App"),
        backgroundColor: Color(0xFF33404c),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Picture(_answer, _unusedLetters, _imageURLs),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Container(
              alignment: Alignment.center,
              width: _letters.length*55.toDouble(),
              child: GridView.builder(
                itemCount: _letters.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: _letters.length<6? _letters.length:6),
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext cxt, int number) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: FlatButton(
                      splashColor: Colors.black,
                      color: (_letters[number] == '') ? Colors.grey : Colors.white,
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        setState(() {
                          if (_letters[number] != '') {
                            for (int i = 0; i < _unusedLetters.length; i++)
                              if (_unusedLetters[i] == '') {
                                _unusedLetters[i] = _letters[number];
                                break;
                              }
                            _letters[number] = '';
                          }
                          if (_letters[_letters.length - 1] != '')
                            PictureManager();
                        });
                      },
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: Center(
                            child: Text(
                          _letters[number],
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 28,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: _unusedLetters.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: _unusedLetters.length ~/ 2,
                            childAspectRatio: 1),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              width: 40,
                              child: FlatButton(
                                color: (_unusedLetters[index] == '') ? Colors.grey : Colors.white,
                                disabledColor: Colors.red,
                                splashColor: Colors.black,
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  setState(() {
                                    int _presentIndex = -1;
                                    for (int i = 0; i < _letters.length; i++)
                                      if (_letters[i] == '') {
                                        _presentIndex = i;
                                        break;
                                      }
                                    if (_unusedLetters[index] != '' && _presentIndex != -1) {
                                      _letters[_presentIndex] = _unusedLetters[index];
                                      _unusedLetters[index] = '';
                                    } if(_presentIndex == _letters.length-1 && _answer.split('').toString().compareTo(_letters.toString()) == 0) {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: new Text("Correct Answer"),
                                              content: new Text("Congratulations"),
                                              actions: <Widget>[
                                                // usually buttons at the bottom of the dialog
                                                new FlatButton(
                                                  child: new Text("Close"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          }
                                        );
                                    } else if(_presentIndex == _letters.length-1 && _answer.split('').toString().compareTo(_letters.toString()) != 0) {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: new Text("Incorrect Answer"),
                                            content: new Text("Please Try Again"),
                                            actions: <Widget>[
                                              // usually buttons at the bottom of the dialog
                                              new FlatButton(
                                                child: new Text("Close"),
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        }
                                      );
                                    }
                                  });
                                },
                                child: SizedBox(
                                  width: 45,
                                  height: 45,
                                  child: Center(
                                    child: Text(
                                      _unusedLetters[index],
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                  child: FlatButton(
                    color: Colors.lightGreen,
                    splashColor: Colors.green,
                    padding: EdgeInsets.all(9),
                    onPressed: () {
                      //Add Hint Method
                    },
                    child: Text('H\nIN\nT',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
					FlatButton(
						onPressed: () {
							Navigator.pushNamed(context, '/new');
						},
						child: Text('New'),
					)
        ],
      ),
    );
  }
}
