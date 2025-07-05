import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/most%20recent%20provider.dart';
import 'package:islami/ui/home/tabs/quran-tab/QuranResources.dart';
import 'package:islami/uitles/AppTextStyle.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../uitles/App_Assets.dart';
import '../../../../uitles/App_Colors.dart';
import '../../../../uitles/shared pref.dart';

class MostRecentWidget extends StatefulWidget {
   MostRecentWidget({super.key});

  @override
  State<MostRecentWidget> createState() => _MostRecentWidgetState();
}

class _MostRecentWidgetState extends State<MostRecentWidget> {
late MostRecentProvider mostrecentprovider ;
  @override
  void initState() {
    super.initState();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    mostrecentprovider.readLastSura();

  },);

  }



  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    mostrecentprovider=Provider.of<MostRecentProvider>(context);

    //todo this is show last sura if he didn't this no  widget can't be show (visibility)
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('most recent',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: height*0.02,),
        SizedBox(
            height: height*0.35,
            width: double.infinity,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.primaryColor,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(QuranResources.englishQuranSurahs[mostrecentprovider.mostRecent[index]],
                                style:AppTextStyle.bold24Black),
                              Text(QuranResources.arabicQuranSuras[mostrecentprovider.mostRecent[index]],
                                style: AppTextStyle.bold24Black),
                              Text('${QuranResources.AyaNumber[mostrecentprovider.mostRecent[index]]} verses',
                                style: AppTextStyle.bold16black),
                            ],
                          ),
                        ),
                        Image.asset(AppAssets.logoMostRecent),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: width*0.02,);
                },
                itemCount: mostrecentprovider.mostRecent.length),
          ),

        SizedBox(height: height*0.02,),
      ],
    );
  }



}
