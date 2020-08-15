import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'My Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
      body: new Container(
       // color: Color(0xff258DED),
        color : Colors.lightBlueAccent,
    height: 800.0,
    alignment: Alignment.center,
    child: Column(

    children: <Widget>[
    Container(
    height: 200.0,
    width: 200.0,
    decoration: new BoxDecoration(
    image: DecorationImage(
    image: new AssetImage('assets/images/logo.png'),
    fit: BoxFit.fill
    ),
    shape: BoxShape.circle
    ),
    ),
    Container(

    padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
    alignment: Alignment.topLeft,
    height: 120,
    width: 350,

    color: Colors.white,
    child: ListView(children: <Widget>[
    ListTile(
    title: Text("Harshitha Khandelwal"),
    subtitle: Text("Trainee Engineer"),
    leading: Icon(
    Icons.group_add,
    color:Colors.black,
    size: 40,
    ),


    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(

    children: <Widget>[
    Text("Vidyaranyapura,",
    style: TextStyle(
    fontSize: 9,
    fontWeight: FontWeight.bold,
    color: Colors.black)),

    Text(" Bangalore",style: TextStyle(
    fontSize: 9,

    color: Colors.black)),
    Spacer(),
    Text("9036-264-990",style: TextStyle(
    fontSize: 12,

    color: Colors.black),),
    ],
    ),
    )
    ]),
    ),
      SizedBox(height: 10),
      Container(

        padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
        alignment: Alignment.topLeft,
        height: 90,
        width: 350,

        color: Colors.white,
        child: ListView(children: <Widget>[
          ListTile(
            title: Text("Lets make coding fun and interesting!"),
           // subtitle: Text("Trainee Engineer"),
            leading: Icon(
              Icons.format_quote,
              color:Colors.black,
              size: 40,
            ),


          ),

        ]),
      ),
      SizedBox(height: 10),
      Container(

        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        alignment: Alignment.center,
        height: 80,
        width: 350,

        color: Colors.white,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Icon(
              Icons.call,
              color: Colors.black,
              size: 30.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            Icon(
              Icons.chat,
              color: Colors.black,
              size: 30.0,
            ),
            Icon(
              Icons.alternate_email,
              color: Colors.black,
              size: 30.0,
            ),
          ],
        )
      ),
      SizedBox(height: 30),

      RawMaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },

        elevation: 2.0,
        fillColor: Colors.white,


        child: Icon(
          Icons.arrow_forward,
          size: 35.0,
        ),
        padding: EdgeInsets.all(20.0),
        shape: CircleBorder(),
      )







     ] )));
  }
}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}