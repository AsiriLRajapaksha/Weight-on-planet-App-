import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  final TextEditingController _weightOnPlanet = new TextEditingController();
  double finalResult = 0.0;
  String _finalText = "";
  @override

  int radioValue = 0;

  void handleRadioValueChange(int value){
    setState(() {
      radioValue = value;
      
    });
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Weight on planet",
          style: new TextStyle(),
        ),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20) ),
            new Image.asset(
              "images/planet.png",
              width: 150,
              height: 150,
            ),
            new Padding(padding: new EdgeInsets.all(20) ),
            new Container(
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _weightOnPlanet,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'your Weight in earth',
                      hintText: 'In pound',
                      icon: new Icon(Icons.person),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(10) ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Radio<int>(
                          value: 0, groupValue: radioValue, onChanged: handleRadioValueChange,
                        activeColor: Colors.red,
                      ),
                      new Text("Pluto", style:new TextStyle(
                        color : Colors.white
                      ),),
                      new Radio<int>(
                          value: 1, groupValue: radioValue, onChanged: handleRadioValueChange
                      ),
                      new Text("Mars", style:new TextStyle(
                          color : Colors.white
                      ),),
                      new Radio<int>(
                          value: 2, groupValue: radioValue, onChanged: handleRadioValueChange,
                        activeColor: Colors.lightGreenAccent,
                      ),
                      new Text("Venue", style:new TextStyle(
                          color : Colors.white
                      ),),
                    ],
                  )
                ],
              ),
            ),
            new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(padding: new EdgeInsets.all(20) ),
                  new Text(
                    "$_finalText",
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
