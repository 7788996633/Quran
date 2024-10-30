// ignore_for_file: avoid_print

import '../helper/api.dart';

class AyahServices{
    Future<List> getAyah(String identifier) async {
    var request =
        await Api().gett('http://api.alquran.cloud/v1/quran/$identifier');
    try {
      print(request['data']['surahs'][0]['ayahs'][0]['text']);
      return request['data']['surahs'];
    } catch (a) {
      print(a);
      return [];
    }
  }

}