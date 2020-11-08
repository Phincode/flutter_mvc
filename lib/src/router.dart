import 'package:flutter/widgets.dart';
import 'package:flutter_mvc/App/controllers/controller.dart';
import 'package:flutter_mvc/App/controllers/moovieService.dart';
import 'package:flutter_mvc/views/ItemList.dart';

router(name,context){
  switch(name){
    case '/listItems':
        controllers.moovieMapper(context);
      break;








    default:
      controllers.moovieMapper(context);
  }


}

