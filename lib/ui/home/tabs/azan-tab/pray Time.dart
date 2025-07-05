import 'package:flutter/cupertino.dart';
import 'package:islami/ui/home/tabs/azan-tab/azan%20time.dart';

import '../../../../uitles/AppTextStyle.dart';

class PrayerTime extends StatefulWidget {
   PrayerTime({super.key});

  @override
  State<PrayerTime> createState() => _PrayerTimeState();
}

class _PrayerTimeState extends State<PrayerTime> {
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            SizedBox(
              height: height*0.2,
              width: width*0.30,
                child: Container(
                  decoration: BoxDecoration(
                      color:Color(0xff856B3F),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(70)
                    )
                  ),
             
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('09 muh,\n 1447',style: AppTextStyle.bold16White,)
                  ],
                                    ),
                ),
            ),
            // SizedBox(width: width*0.1,),
            Spacer(),
            Column(
              children: [
                Text('Pray Time',style: AppTextStyle.bold20blackop71,),
                SizedBox(height: height*0.02,),
                Text('Thursday',style: AppTextStyle.bold20black,),
              ],
            ),
            // SizedBox(width: width*0.2,),
            Spacer(),
            SizedBox(
              height: height*0.2,
              width: width*0.30,
              child: Container(
                decoration: BoxDecoration(
                    color:Color(0xff856B3F),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(70)
                    )
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('09 muh,\n 1447',style: AppTextStyle.bold16White,)
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: height*0.07,),
        AzanTime(),
        SizedBox(height: height*0.07,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Next Pray',style: AppTextStyle.bold20blackop71,),
            Text('- 2:34',style: AppTextStyle.bold20black,)

          ],
        )
      ],
    );
  }
}
