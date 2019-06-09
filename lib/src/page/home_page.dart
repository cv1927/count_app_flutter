import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textStyle = TextStyle(fontSize: 25.0);
  
  int count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Count App Init"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Número de clicks",style: textStyle,),
            Text("$count",style: textStyle,),
          ],
        ),
      ),
      floatingActionButton: createButtons(),
    );
  }

  Widget createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: resetCount,),
        Expanded(child: SizedBox(width: 5.0,)),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: removeCount,),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add),onPressed: addCount,),
      ],
    );
  }

  void addCount() {
    setState(() {
      count++;
    });
  }

  void removeCount() {
    setState(() {
      count--;
    });
  }

  void resetCount() {
    setState(() {
      count = 0;
    });
  }
}