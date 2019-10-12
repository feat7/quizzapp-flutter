import 'package:quizzapp/model/picture.dart';
import 'package:uuid/uuid.dart';

class Puzzle {
  String id;
  List<Picture> pictureSet;
  String keyword;

  Puzzle(){
    this.id = Uuid().v4().toString();

  }
}