import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp2() {
  FlutterStatusbarcolor.setStatusBarColor(
    Colors.cyanAccent,
  );
  circle() {
    Fluttertoast.showToast(
        msg: "My First Page",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 100,
        backgroundColor: Colors.red,
        textColor: Colors.blue,
        fontSize: 25.0);
  }

  button2() {
    Fluttertoast.showToast(
        msg: "My First Page",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 100,
        backgroundColor: Colors.blue,
        textColor: Colors.red,
        fontSize: 25.0);
  }

  var mybody = Container(
    width: 300,
    height: 552,
    alignment: Alignment.bottomLeft,
    child: Column(
      children: <Widget>[
        new Text(
          '      My First Page    ',
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontStyle: FontStyle.italic,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
              'https://raw.githubusercontent.com/shikhagupta63/myfirstapp/master/vimalsir.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: new Text(
            'Welcome',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Image.network(
                'https://raw.githubusercontent.com/shikhagupta63/myfirstapp/master/giphy.gif'),
          ),
        ),
      ],
    ),
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(20.0),
      border: Border.all(width: 10, color: Colors.brown.shade300),
    ),
  );

  var myicon = Icon(Icons.add_to_photos);
  var myiconbutton = IconButton(
    icon: myicon,
    onPressed: circle,
  );
  var myicon3 = Icon(Icons.accessible);
  var myicon2 = Icon(Icons.add_circle);
  var myicon2button = IconButton(
    icon: myicon2,
    onPressed: button2,
  );
  var myhome = Scaffold(
    appBar: AppBar(
      title: Text(
        "Flutter Day_6",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color(0xff238c00),
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),
      ),
      leading: myicon3,
      actions: <Widget>[
        myiconbutton,
        myicon2button,
      ],
      backgroundColor: Colors.grey,
    ),
    body: Center(child: mybody),
    backgroundColor: Color.fromRGBO(255, 255, 0, 0.5),
  );

  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
