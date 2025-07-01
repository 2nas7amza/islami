import 'package:flutter/cupertino.dart';
import 'package:islami/ui/home/tabs/quran-tab/QuranResources.dart';

import '../../../../uitles/AppTextStyle.dart';

class Suraitem extends StatelessWidget {
  int index;
   Suraitem({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return Container(
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/arabic-art-svgrepo-com 1.png',),
              Text('${index+1}',style: AppTextStyle.bold16White,),
            ],
          ),

          Column(
            children: [
              Text(QuranResources.englishQuranSurahs[index],
                style: AppTextStyle.bold124White,
              ),
              SizedBox(height: height*0.03,),
              Text('${QuranResources.AyaNumber[index]} verses',style: AppTextStyle.bold16White,),
            ],
          ),
           Spacer(),
           Text('${QuranResources.arabicQuranSuras[index]}',style: AppTextStyle.bold124White,),


        ],
      ),
    );
  }
}
