import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:islami/uitles/AppTextStyle.dart';

import '../../../../model/hadith.dart';
import '../../../../uitles/App_Assets.dart';
import '../../../../uitles/App_Colors.dart';

class HadithContent extends StatefulWidget {
  int index;
   HadithContent({super.key, required  this.index});

  @override
  State<HadithContent> createState() => _HadithContentState();
}

class _HadithContentState extends State<HadithContent> {
  Hadith? hadith;


  @override
  void initState() {
    // TODO: implement initState
    loadhadeeth(widget.index);
  }
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return  Container(
      padding: EdgeInsets.all(16),
        width: width,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage(AppAssets.hadithBackGround)),
          color: AppColors.primaryColor,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height*0.05,),
              Text(hadith?.title??'',style: AppTextStyle.bold24Black,),
              SizedBox(height: height*0.1,),
              Text(hadith?.content??'',style: AppTextStyle.bold16black,),
            ],
          ),
        )
    );
  }

  void loadhadeeth(int index)async {
    String readfiles = await rootBundle.loadString('assets/hadeeth/h${index + 1}.txt');
    String title =readfiles.substring(0,readfiles.indexOf('\n'));
    String content=readfiles.substring(readfiles.indexOf('\n')+1);
    hadith =Hadith(title: title, content: content);

    setState(() {

    });
  }
}
