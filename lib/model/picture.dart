import 'package:flutter/material.dart';

class Picture {
  String imageURL;
  Image image;
  List<String> keywords;

  Picture({this.imageURL, this.keywords}){
//    for (String keyword in this.keywords){
//      Set<Picture> pictureSet = keywordMap[keyword] == null ? new Set<Picture>() : keywordMap[keyword];
//      pictureSet.add(this);
//      keywordMap.update(keyword, (value) => pictureSet);
//    }
  }
}

Map<String, Set<Picture>> keywordMap;

List<Picture> allPictures = [
  Picture(keywords: ["ice","cold","blue","snow","frozen","sky"], imageURL: "https://i.ibb.co/g73cdMv/adventure-blue-calm-waters-300857.jpg"),
  Picture(keywords: ["ice","cold","frozen","lemon","fruit"], imageURL: "https://i.ibb.co/qmV8hjT/lemons-ice-water-summer-90763.jpg"),
  Picture(keywords: ["allergy","cold","tissue"], imageURL: "https://i.ibb.co/tLnfkD8/allergies-allergy-cold-41284.jpg"),
  Picture(keywords: ["tissue","gift","present","christmas"], imageURL: "https://i.ibb.co/GCVkptN/bags-black-friday-christmas-749353.jpg"),
  Picture(keywords: ["cold","tree","snow"], imageURL: "https://i.ibb.co/gDS6rz5/bird-s-eye-view-bright-close-up-1438761.jpg"),
];