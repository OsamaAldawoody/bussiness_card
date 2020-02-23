import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bussiness Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bussiness Card'),
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                      Icon(
                        Icons.person_pin,
                        size: 85,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children:<Widget>[
                        Text('Flutter McFlutter',style: TextStyle(fontSize: 24),),
                        Text('Experienced App Developer',style: TextStyle(fontSize: 22),)
                      ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[

                    Text('123 Main Street',style: TextStyle(fontSize: 22),),
                    Spacer(flex: 1,),
                    Text('415 555 (900)',style: TextStyle(fontSize: 22),),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.accessibility,size: 50,),
                  Icon(Icons.alarm,size: 50,),
                  Icon(Icons.phone_android,size: 50,),
                  Icon(Icons.phone_iphone,size: 50,),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
