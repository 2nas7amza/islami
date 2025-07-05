import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/azan-tab/pray%20Time.dart';
import 'package:islami/uitles/AppTextStyle.dart';
import 'package:islami/uitles/App_Assets.dart';
import 'package:islami/uitles/App_Colors.dart';
class AzanTab extends StatefulWidget {
  const AzanTab({super.key});

  @override
  State<AzanTab> createState() => _AzanTabState();
}

class _AzanTabState extends State<AzanTab> {
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width*0.95,
                height: height*0.7,
               decoration: BoxDecoration(
                 color: AppColors.primaryColor,
                 borderRadius: BorderRadius.circular(30)
               ),
                child: PrayerTime(),
              ),
             SizedBox(height: height*0.05) ,
              Text('Azkar',style: AppTextStyle.bold16White,),
              SizedBox(height: height*0.05) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height*0.7,
                    width: width*0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.blackColor,
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 2
                      )
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppAssets.evinigAzkar),
                        Text('Evinig Azkar',style: AppTextStyle.bold20white,),
                      ],
                    ) ,
                  ),
                  SizedBox(width: width*0.05,),
                  Container(
                    height: height*0.7,
                    width: width*0.45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.blackColor,
                        border: Border.all(
                            color: AppColors.primaryColor,
                            width: 2
                        )
                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppAssets.evinigAzkar),
                        Text('Evinig Azkar',style: AppTextStyle.bold20white,),
                      ],
                    ) ,
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
}}