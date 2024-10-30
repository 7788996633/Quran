import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  // static const String myUrl = 'http://192.168.182.86:8000';
  // static String myToken =
  //     'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjE2OC4xODIuODY6ODAwMC9hcGkvbG9naW4iLCJpYXQiOjE3MTE3OTE2MTMsImV4cCI6MTcxMTc5NTIxMywibmJmIjoxNzExNzkxNjEzLCJqdGkiOiJETGJyazg1REFra2ZVZEpHIiwic3ViIjoiMSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.bT8IZiuSS93jcV3bwnTFN1QBmU_UzdbwKzhCB76gsJg';

  Future<dynamic> gett(String url) async {
    var response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('${response.statusCode}');
    }
  }

  Future<dynamic> postt(String url, Map<String, String>? headers, body) async {
    var response =
        await http.post(Uri.parse(url), body: body, headers: headers);

    return jsonDecode(response.body);
  }
}
