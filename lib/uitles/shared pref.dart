import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_android/shared_preferences_android.dart';

class SharedPrefrenceKey{
  static const String mostRecentKey= 'most-recent';
}
void saveLastSura(int suraIndexName)async{
  //todo : to save data in most recently
 final SharedPreferences pref = await SharedPreferences.getInstance();
 List<String> mostRecentSura= pref.getStringList(SharedPrefrenceKey.mostRecentKey)?? [];
 // mostRecentSura.insert(0,'$suraIndexName');

 if(mostRecentSura.contains('$suraIndexName')){
   mostRecentSura.remove('$suraIndexName');
   mostRecentSura.insert(0,'$suraIndexName');
 }else{
   mostRecentSura.insert(0,'$suraIndexName');
 }
 if(mostRecentSura.length>5){
   // mostRecentSura=mostRecentSura.sublist(0,5);
   mostRecentSura.removeLast();
 }
await pref.setStringList(SharedPrefrenceKey.mostRecentKey, mostRecentSura);
}
Future<List<int>>  readLastSura()async{
  //todo : to read data in most recently
  final SharedPreferences pref= await SharedPreferences.getInstance();
  List<String> mostRecentSuraAsString= pref.getStringList(SharedPrefrenceKey.mostRecentKey)?? [];
  List<int> mostRecentSuraAsInt = mostRecentSuraAsString.map((elment) => int.parse(elment)).toList();
 return mostRecentSuraAsInt;
}