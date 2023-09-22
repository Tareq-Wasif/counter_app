import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      home: MyHomePage(),
    );
  }
}


class  MyHomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
   return MyHomePageUi();
  }

}



class MyHomePageUi extends State<MyHomePage>{

  int countNUmber= 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Counter App"),),
      body: Center(
        child: Text(countNUmber.toString()),
      ),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
        onPressed: (){
        setState(() {
          countNUmber=countNUmber+1;
        });
        },
      ),

    );
  }
}


