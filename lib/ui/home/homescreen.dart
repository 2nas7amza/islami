import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/azan-tab/azan_tab.dart';
import 'package:islami/ui/home/tabs/hadith-tab/hadith_tab.dart';
import 'package:islami/ui/home/tabs/quran-tab/quran_tab.dart';
import 'package:islami/ui/home/tabs/radio-tab/radio_tab.dart';
import 'package:islami/ui/home/tabs/sebha-tab/sebha_tab.dart';
import 'package:islami/uitles/App_Assets.dart';
import 'package:islami/uitles/App_Colors.dart';

class HomeScreen extends StatefulWidget {
static const  String  routeName='home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<String>backGround=[
  AppAssets.quranBg,
    AppAssets.hadithBg,
    AppAssets.sebhaBg,
    AppAssets.radioBg,
    AppAssets.azanBg
  ];
  List<Widget> tabs=[
    QuranTab(),HadithTab(),SebhaTab(),RadioTab(),AzanTab()
  ];
  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Stack(
        children:  [
          Image.asset(backGround[selectedIndex],
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,),
          Scaffold(
      
          bottomNavigationBar:Theme(data: Theme.of(context).copyWith(
            canvasColor: AppColors.primaryColor
          ),
      
              child: BottomNavigationBar(
               currentIndex: selectedIndex,
            onTap: (index){
             selectedIndex =index;
              setState(() {
      
              });
      
      
                },
                items:[
                  BottomNavigationBarItem(icon: buildBNB(index: 0, imageName: AppAssets.quranIcon),label: 'quran' ),
                  BottomNavigationBarItem(icon: buildBNB(index: 1, imageName: AppAssets.hadithIcon),label: 'hadith' ),
                  BottomNavigationBarItem(icon: buildBNB(index: 2, imageName: AppAssets.sebhaIcon),label: 'sebha' ),
                  BottomNavigationBarItem(icon: buildBNB(index: 3, imageName: AppAssets.radioIcon),label: 'radio' ),
                  BottomNavigationBarItem(icon: buildBNB(index: 4, imageName: AppAssets.azanIcon),label: 'azan' ),
      
                ],backgroundColor:AppColors.primaryColor ,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppColors.whiteColor,
                unselectedItemColor: AppColors.blackColor,
      
              ),),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppAssets.logo),
                Expanded(child:tabs[selectedIndex] )
              ],
            ),
      
          )
        ],
      ),
    );
  }
  Widget buildBNB({required int index,required String imageName}){
    return selectedIndex == index?
    Container(
        padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8
        ),
        decoration: BoxDecoration(borderRadius:
        BorderRadius.circular(66),
            color: AppColors.blackbgColor),
        child: ImageIcon(AssetImage(imageName))):
     ImageIcon(AssetImage(imageName));
  }
}
