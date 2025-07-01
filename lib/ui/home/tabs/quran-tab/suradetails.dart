import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/tabs/quran-tab/QuranResources.dart';
import 'package:islami/ui/home/tabs/quran-tab/sura%20contant%20item.dart';
import 'package:islami/uitles/AppTextStyle.dart';
import 'package:islami/uitles/App_Assets.dart';
import 'package:islami/uitles/App_Colors.dart';

class SuraDetails extends StatefulWidget {
 static const String routName= 'sura-details';
 List<String>verses=[];

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    int index =ModalRoute.of(context)?.settings.arguments as int;
    if(verses.isEmpty){
      loadSura(index);
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.blackbgColor,
        leading: Icon(Icons.arrow_back,color: AppColors.primaryColor,),
        title: Text(QuranResources.englishQuranSurahs[index],style:AppTextStyle.bold24Primary ,),
      ),
      body: Container(
            decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage(AppAssets.suraBackGround)),
            ) ,
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(QuranResources.arabicQuranSuras[index],style: AppTextStyle.bold24Primary,
            textAlign: TextAlign.center,
          ),
            Expanded(child:
            verses.isEmpty?
            const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                )
            )
                :
            ListView.builder(itemBuilder:
                (context, index) {
              return SouraContentItem(sura: verses[index],index: index,);
            },itemCount: verses.length,
            ),
            )
          ],
        ),
      )
    );

  }

  void loadSura(int index)async{
    String readfiles= await rootBundle.loadString ('assets/files/${index+1}.txt');
    List<String> lines= readfiles.split('\n');
    for(int i=0; i<lines.length;i++){
      print(lines[i]);
    }
    verses = lines;
   Future.delayed(Duration (seconds: 1),() => setState(() {

   }));
  }
}
/*verses.isEmpty?
          const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
            )
          )
          :
      ListView.builder(itemBuilder:
      (context, index) {
        return Text(verses[index]);
      },itemCount: verses.length,
      ),*/