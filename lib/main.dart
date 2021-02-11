import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  dynamic counter = 0;
  var color;
  void incrementCounter() {
    setState(() {
      counter += 1;
      color=Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
          backgroundColor: color,
        ),
        body: Container(
            color: Color.fromRGBO(0, 0, 250, 0.4),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "$counter",
                  style: TextStyle(
                      color: Colors.red,
                      backgroundColor: Colors.amberAccent,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      wordSpacing: -10),
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                      counter--;
                    });

                  },
                    splashColor: Colors.yellow,
                  child:Text('Decrement')
                )
              ],
            )),
        floatingActionButton: FloatingActionButton(

          onPressed: incrementCounter,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
