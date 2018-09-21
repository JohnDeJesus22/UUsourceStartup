import 'package:flutter/material.dart';
import 'sign_up.dart';

void main() => runApp(new UUsourceApp());

class UUsourceApp extends StatelessWidget {
  //App base
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage()
    );
  }
}

//HomePage
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('UUsource'),
          centerTitle: true,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.menu, color: Colors.white,), onPressed: null),
            new IconButton(icon: new Icon(Icons.search, color: Colors.white,), onPressed: null)],
        backgroundColor: Colors.black.withOpacity(0.5),
      ),
      body: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
        new Expanded(
          fit: FlexFit.tight,
          child: new GridView.count(crossAxisCount: 3,
          children: <Widget>[
          Image.asset('assets/images/fantasyimage.png'),
          Image.asset('assets/images/biographyimage.png'),
          Image.asset('assets/images/fictionimage.png'),
          Image.asset('assets/images/childrenimage.png'),
          Image.asset('assets/images/romanceimage.png'),
          Image.asset('assets/images/sciencefiction.png')]),
      ),
        OutlineButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
        },
        child: Text('Sign Up'),
        textColor: Colors.deepOrangeAccent,
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            highlightedBorderColor: Colors.deepOrangeAccent
        )
      ]
    ));

}
}
