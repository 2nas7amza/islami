import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/uitles/AppTextStyle.dart';
import 'package:islami/uitles/App_Assets.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int currentIndex = 0;

  List<String> sebha = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
  ];

  void onSebhaTap() {
    setState(() {
      counter++;

      if (counter >= 34) {
        counter = 0;
        currentIndex++;
        if (currentIndex >= sebha.length) {
          currentIndex = 0;
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى ',style: AppTextStyle.bold36white,),
        GestureDetector(
          onTap: onSebhaTap,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(AppAssets.sebhaCounter),

              Column(
                children: [
                  SizedBox(height: height*0.2,),
                  Text(sebha[currentIndex],style: AppTextStyle.bold36white,),
                  SizedBox(height: height*0.1,),
                  Text('$counter',style: AppTextStyle.bold36white,)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
