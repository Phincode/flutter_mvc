
import 'package:flutter/material.dart';

class moovie{
   String id,rank,title,fullTitle,year,image,crew,imDbRating,imDbRatingCount;

  moovie({@required this.id,@required this.rank,@required this.title,@required this.fullTitle,@required this.year,@required this.image,@required this.crew,@required this.imDbRating,@required this.imDbRatingCount});

  factory moovie.fromJson(Map<String,dynamic>mvies){
    return moovie(
        id: mvies["id"],
        rank:mvies["rank"],
        title: mvies["title"],
        fullTitle: mvies["fullTitle"],
        year: mvies["year"],
        image:mvies["image"],
        crew: mvies["crew"],
        imDbRating: mvies["imDbRating"],
        imDbRatingCount: mvies["imDbRatingCount"]
    );

  }


}