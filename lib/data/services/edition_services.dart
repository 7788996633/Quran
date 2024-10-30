// ignore_for_file: avoid_print

import 'package:qu/data/helper/api.dart';
import 'package:qu/data/services/surah_services.dart';

class EditionServices {
  Future<List> getAllEdiions() async {
    var request = await Api().gett('http://api.alquran.cloud/v1/edition');
    try {
      return request['data'];
    } catch (a) {
      print(a);
      return [];
    }
  }

  Future<List> getAllEdiionsIdentifier() async {
    var request = await Api().gett('http://api.alquran.cloud/v1/edition');
    try {
      print(request['data'][0]['identifier']);
      return SurahServices().getSurahByEdition(request['data']);
    } catch (a) {
      print(a);
      return [];
    }
  }

  Future<List> getAllEdiionsByLanguage(String language) async {
    var request = await Api()
        .gett('http://api.alquran.cloud/v1/edition/language/$language');
    try {
      print(request['data']);
      return request['data'];
    } catch (a) {
      print(a);
      return [];
    }
  }

  Future<List> getAllEdiionsByLanguageType(String type) async {
    var request =
        await Api().gett('http://api.alquran.cloud/v1/edition/type/$type');
    try {
      print(request['data']);
      return request['data'];
    } catch (a) {
      print(a);
      return [];
    }
  }

  Future<List> getQuranEditionByIdentifier(String identifier) async {
    var request =
        await Api().gett('http://api.alquran.cloud/v1/quran/$identifier');
    try {
      print(request['data']);
      return request['data'];
    } catch (a) {
      print(a);
      return [];
    }
  }
}
