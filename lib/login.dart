import 'package:flutter/material.dart';
import 'package:kelas_inspirasi_apps/dashboard.dart';

class Login extends StatefulWidget {
  @override
  State createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login'),
      ),
      body: new Container(
        child: new Column(children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(left: 15.0, right: 15.0, top: 200, bottom: 0),
            child: createTextFieldOf(12.0, "Roboto", "Email"),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
            child: createPasswordFieldOf(12.0, "Roboto", "Sandi Anda"),
          ),
          Container(
            height: 50,
            width: 250,
            margin: EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dashboard(),
                    ));
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ]),
        alignment: Alignment.center,
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
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: labelText),
    );
  }

  TextField createPasswordFieldOf(
      double fontSize, String fontFamily, String labelText) {
    return new TextField(
      obscureText: true,
      style: new TextStyle(
          fontSize: fontSize,
          color: const Color(0xFF000000),
          fontWeight: FontWeight.w200,
          fontFamily: fontFamily),
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: labelText),
    );
  }
}
