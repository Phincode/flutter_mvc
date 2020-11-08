import 'dart:convert';
import 'package:flutter_mvc/App/models/moovies.dart';
import 'package:http/http.dart' as http;
class mooviesSrvce{

  final webService="https://imdb-api.com/en/API/Top250Movies/k_nf4y0cmx";
  mooviesSrvce();

 Future <List<moovie>> getMovies()async{
    List<moovie> result=new List<moovie>();

    var response = await http.get(webService);
    if(response.statusCode!=200){
      throw "error:"+response.statusCode.toString();
    }
    Map data=jsonDecode(response.body);
    List<dynamic> data0=data["items"].toList();
     result.addAll(data0.map((e) => moovie.fromJson(e)).toList());
     print(result.toString());
     return result;
  }


}