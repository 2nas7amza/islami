import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../uitles/shared pref.dart';

class MostRecentProvider extends ChangeNotifier {
  List<int>mostRecent=[];
  void  readLastSura()async{
    //todo : to read data in most recently
    final SharedPreferences pref= await SharedPreferences.getInstance();
    List<String> mostRecentSuraAsString= pref.getStringList(SharedPrefrenceKey.mostRecentKey)?? [];
    mostRecent = mostRecentSuraAsString.map((elment) => int.parse(elment)).toList();
    notifyListeners();

  }
  }
