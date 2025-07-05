import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/uitles/AppTextStyle.dart';
import 'package:islami/uitles/App_Assets.dart';
import 'package:islami/uitles/App_Colors.dart';

class RadioDetails extends StatelessWidget {
  List<String> nameRadio=[
    'Radio-abdelbast abdelsamat',
    'Radio-mohamed sdeik almensawe',
    'Radio-alhosry',
    'Radio-al tablaoy',
  'Radio-mahmoud ali elbana',
  ];
   RadioDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    var height= MediaQuery.of(context).size.width ;
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: height*0.5,
            width: width*0.9,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: AssetImage(AppAssets.radioStationGround),
                
                  )
            ),child: Column(
                children: [
                  Text(nameRadio[index],style: AppTextStyle.bold24Black,),
                  SizedBox(height: height*0.1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow_sharp,size:60,),
                      Icon(Icons.volume_up,size: 30,)
                    ],
                  )
                 
                ],
          ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: height*0.05,);
        },

        itemCount: 5);
  }
}
