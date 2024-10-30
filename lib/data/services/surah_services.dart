// ignore_for_file: avoid_print


import '../helper/api.dart';

class SurahServices {
  Future<List> getSurahByEdition(String identifier) async {
    var request =
        await Api().gett('http://api.alquran.cloud/v1/quran/$identifier');
    try {
      print(request['data']['surahs'][0]['name']);
      return request['data']['surahs'];
    } catch (a) {
      print(a);
      return [];
    }
  }
}
