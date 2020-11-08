
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvc/App/controllers/moovieService.dart';
import 'package:flutter_mvc/views/ItemList.dart';

// Controllers
class controllers{

  // controllers

  controllers.moovieMapper(context){
    mooviesSrvce mctrl=new mooviesSrvce();
    mctrl.getMovies().then((value){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
        return itemlist(value);
      }));
    });
  }


}