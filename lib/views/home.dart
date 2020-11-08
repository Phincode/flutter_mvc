
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvc/App/controllers/moovieService.dart';
import 'package:flutter_mvc/src/router.dart';

class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _home();
  }

}



class _home extends State<home>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Center(
        child: RaisedButton(
          child: Text("List page"),
          onPressed: (){
           router("/listItems",context);
          },
        ),
      ),

    );
  }

}