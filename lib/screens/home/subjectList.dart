import 'package:flutter/material.dart';


class Subjects extends StatelessWidget {

  final String sub;
  Subjects({this.sub});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(sub,
            style: TextStyle(
                fontSize: 17.0,
                fontStyle: FontStyle.italic,
                color : Colors.grey[600]
            ),),
            SizedBox(height: 4.0),
          ],
        ),
      ),
    );
  }
}
