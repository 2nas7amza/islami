import 'package:flutter/cupertino.dart';
import 'package:islami/uitles/AppTextStyle.dart';
import 'package:islami/uitles/App_Colors.dart';

class SouraContentItem extends StatelessWidget {
  String sura;
  int  index;
   SouraContentItem({super.key,required this.sura, required this.index});

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
  return Container(
    padding: EdgeInsets.symmetric(
      vertical: height*0.1
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(
        color: AppColors.primaryColor
      )
    ),child: Text('[${index+1}] $sura',style: AppTextStyle.bold24Primary,textAlign: TextAlign.center,),
  );
  }
}
