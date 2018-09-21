import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {

  String _memberID;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
            padding: EdgeInsets.all(10.0),
            child: new Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new TextFormField(
                        decoration: new InputDecoration(labelText: 'Member ID')
                    ),
                    new TextFormField(
                        decoration: new InputDecoration(labelText: 'Email')
                    ),
                    new TextFormField(
                        decoration: new InputDecoration(labelText: 'Password'),
                        obscureText: true
                    ),
                    OutlineButton(onPressed: () {},
                        child: Text('Create Account'),textColor: Colors.deepOrangeAccent,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        highlightedBorderColor: Colors.deepOrangeAccent
                    ),
                    OutlineButton(onPressed: (){
                      Navigator.pop(context);
                     },
                        child: Text('Have an account? Login.'),
                        textColor: Colors.deepOrangeAccent,
                        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        highlightedBorderColor: Colors.deepOrangeAccent
                        )
                  ],
                ))
        )
    );
  }
}