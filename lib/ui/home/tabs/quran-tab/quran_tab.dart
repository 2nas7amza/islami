import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/quran-tab/QuranResources.dart';
import 'package:islami/ui/home/tabs/quran-tab/SuraItem.dart';
import 'package:islami/ui/home/tabs/quran-tab/most%20recent%20wedgit.dart';
import 'package:islami/ui/home/tabs/quran-tab/suradetails.dart';
import 'package:islami/uitles/AppTextStyle.dart';
import 'package:islami/uitles/App_Assets.dart';
import 'package:islami/uitles/App_Colors.dart';
import 'package:islami/uitles/shared%20pref.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<int> filterList=List.generate(QuranResources.englishQuranSurahs.length, (index) => index,);

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal:width*0.04
      ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           TextField(
             onChanged: (newText) {

               searchAboutList(newText);
             },
                style: TextStyle(
                  color: AppColors.whiteColor
                ),
               cursorColor: AppColors.primaryColor,
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 2
                    )
                 ),
                   focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(16),
                       borderSide: BorderSide(
                           color: AppColors.primaryColor,
                           width: 2
                       )
                   ),
                   hintText: 'sura name',
                   hintStyle: TextStyle(
                       color: AppColors.whiteColor
                   ),
                   prefixIcon: Image.asset(AppAssets.quranIcon,color: AppColors.primaryColor,),

               )
           ),
           SizedBox(height: height*0.02,),
            MostRecentWidget(),
           SizedBox(height: height*0.01,),
           Text('suras name',
           style: TextStyle(
             fontSize:24,
             color: AppColors.whiteColor,
             fontWeight: FontWeight.bold
           ),),
           Expanded(child: ListView.separated(

               itemBuilder: (context, index) {
                 return InkWell(
                     onTap: (){
                       saveLastSura(filterList[index]);
                      Navigator.of(context).pushNamed(SuraDetails.routName,arguments: filterList[index]);
                     },
                     child: Suraitem(index: filterList[index]));
               },
               separatorBuilder: (context, index) {
                 return Divider(
                   color: AppColors.whiteColor,
                   endIndent: height*0.1,
                   indent: height*0.1,
                   thickness:2,
                 );
               },
               itemCount: filterList.length
            )
           )

          ]
       )
    );
  }
  void searchAboutList(String newText) {
    List<int> filterSearch = [];
    for (int i = 0; i < QuranResources.englishQuranSurahs.length; i++) {
      if (QuranResources.englishQuranSurahs[i].toLowerCase().contains(
        newText.toLowerCase(),
      ) ||
          QuranResources.arabicQuranSuras[i].contains(newText)) {
        filterSearch.add(i);
      }
    }
    filterList = filterSearch;
    setState((){});
  }
//
//   void searchAboutList(String newText) {
//     List<int> filterSearch =[];
//     for(int i =0;i<QuranResources.englishQuranSurahs.length;i++){
//       if(QuranResources.englishQuranSurahs[i].toLowerCase().contains(newText.toLowerCase())){
//       filterSearch.add(i);
//       }
//       if(QuranResources.arabicQuranSuras[i].contains(newText)){
//         filterSearch.add(i);
//       }
//     }
//     filterList = filterSearch;
//     setState(() {
//
//     });
//
//   }
}
