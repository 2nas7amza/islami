import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/hadith.dart';
import 'package:islami/ui/home/tabs/hadith-tab/hadith%20conten.dart';
import 'package:islami/uitles/App_Assets.dart';
import 'package:islami/uitles/App_Colors.dart';
import 'package:carousel_slider/carousel_slider.dart';



class HadithTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return CarouselSlider(

      options: CarouselOptions(height: height*1.5),
      items:List.generate(50, (index) => index,).map((index)
      {
        return HadithContent(index: index,);
      }).toList(),
    );
  }

}
