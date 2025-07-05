import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/home/tabs/radio-tab/radio%20details.dart';
import 'package:islami/ui/home/tabs/radio-tab/reciters%20deatils.dart';
import 'package:islami/uitles/AppTextStyle.dart';
import 'package:islami/uitles/App_Colors.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  bool showFirstWidget = true;
  @override
  Widget build(BuildContext context) {
    int selectedWidget = 1;
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              InkWell(
                onTap:
                      () => setState(() => showFirstWidget = true),
                child: Container(
                  width: width*0.45,
                  height: height*0.12,
                  decoration: BoxDecoration(
                    color:  showFirstWidget
                        ? AppColors.primaryColor // Selected color
                        : AppColors.blackbgColor,
                    borderRadius: BorderRadius.circular(12),
                  ),child: Center(child: Text('Radio',
                  style: showFirstWidget
                      ? AppTextStyle.bold24Black// Selected text style
                      : AppTextStyle.bold124White,
                )),
                ),
              ),
              SizedBox(width: width*0.03,),
              InkWell(

                  onTap: () => setState(() => showFirstWidget = false)
                ,
                child: Container(
                  width: width*0.45,
                  height: height*0.12,
                  decoration: BoxDecoration(
                    color: ! showFirstWidget
                        ? AppColors.primaryColor // Selected color
                        : AppColors.blackbgColor,
                    borderRadius: BorderRadius.circular(12),
                  ),child: Center(child: Text('Reciters',
                  style: !showFirstWidget
                      ? AppTextStyle.bold24Black// Selected text style
                      : AppTextStyle.bold124White,
                )),
                ),
              ),
            ],
          ),
          SizedBox(height: height*0.07,),
          Flexible(
            child: Center(
              child: showFirstWidget  ? RadioDetails() :  RecitersDetails(),
            ),
          ),
        ],
      ),

    );
  }
}


/*
Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                 RadioDetails();
                },
                child: Container(
                  width: width*0.45,
                  height: height*0.12,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),child: Center(child: Text('Radio',
                style: AppTextStyle.bold24Black,
                )),
                ),
              ),
              SizedBox(width: width*0.03,),
              InkWell(
                onTap: () {

                },
                child: Container(
                  width: width*0.45,
                  height: height*0.12,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),child: Center(child: Text('Reciters',
                  style: AppTextStyle.bold24Black,
                )),
                ),
              ),
            ],
          )
        ],
      ),
 */