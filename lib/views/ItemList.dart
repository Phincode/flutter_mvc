import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvc/App/models/moovies.dart';

class itemlist extends StatefulWidget{
  List<moovie> mv=new List<moovie>();
  itemlist([this.mv]);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _itemlist(this.mv);
  }

}



class _itemlist extends State<itemlist>{
  List<moovie> mv=new List<moovie>();
  _itemlist([this.mv]);

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
        child:ListView.builder(
            itemCount: mv.length,
            itemBuilder: (BuildContext context,index){
              return Card(
                child: Column(
                  children: [
                    Image.network(mv[index].image,height: 100,),
                    Text(mv[index].title)
                  ],
                ),
              );
            }
        ),
      ),

    );
  }

}