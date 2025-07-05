import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:islami/uitles/AppTextStyle.dart';

class AzanTime extends StatelessWidget {
   AzanTime({super.key});
   List<String> prayName=[
     'Al-Fagr',
     'Al-Duhr',
     'Al-Asr',
     'Al-Magrieb',
     'Al-Isha'
   ];
   List<String> prayTime=[
   '4:14',
   '01:05',
   '04:44',
   '08:09',
   '09:43'
   ];

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return SizedBox(
      height: height*0.2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: width*0.4,
              decoration: BoxDecoration(
                  color: Color(0xb5202020),
                  borderRadius: BorderRadius.circular(20)
              ),child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(prayName[index],style: AppTextStyle.bold16White,),
                Text(prayTime[index],style:  AppTextStyle.bold20white,),
              ],
            ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: width*0.05,);
          },
          itemCount: prayName.length),
    );
  }
}
