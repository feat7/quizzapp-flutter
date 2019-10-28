import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  final String answer;
  final List<String> imageURLs;
  final List<String> letters;
  
  Picture(this.answer, this.letters ,this.imageURLs);
  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      shrinkWrap: true,
      children: imageURLs.map(
          (element) =>
          Container(
            margin: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.grey[700]
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                  element)
              ),
            )
          ),
      ).toList(),
    );
  }
}
