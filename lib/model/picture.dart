import 'package:flutter/material.dart';

class Picture {
  String imageURL;
  Image image;
  List<String> keywords;

  Picture({this.imageURL, this.keywords}){
    this.image = Image.network(imageURL);
//    for (String keyword in this.keywords){
//      Set<Picture> pictureSet = keywordMap[keyword] == null ? new Set<Picture>() : keywordMap[keyword];
//      pictureSet.add(this);
//      keywordMap.update(keyword, (value) => pictureSet);
//    }
  }
}

Map<String, Set<Picture>> keywordMap;

