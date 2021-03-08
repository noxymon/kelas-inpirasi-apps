import 'package:flutter/material.dart';

class AddClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Create New Class"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                //action here
              },
              child: Icon(
                Icons.create_new_folder_sharp,
                size: 26.0,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
              child: createTextFieldOf(15.0, 'Roboto', 'Class name (required)'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
              child: createTextFieldOf(15.0, 'Roboto', 'Level class'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10.0, top: 20.0, right: 10.0, bottom: 10.0),
              child: createTextFieldOf(15.0, 'Roboto', 'List siswa'),
            ),
          ],
        ),
      ),
    );
  }

  TextField createTextFieldOf(
      double fontSize, String fontFamily, String labelText) {
    return new TextField(
      style: new TextStyle(
          fontSize: fontSize,
          color: const Color(0xFF000000),
          fontWeight: FontWeight.w200,
          fontFamily: fontFamily),
      decoration: InputDecoration(labelText: labelText),
    );
  }
}
