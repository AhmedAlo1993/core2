import 'dart:html';

import 'package:http/http.dart' as http;

class FacilitiesApp {
  getFacilities(){
    var response = http.get(Url.parse('https://google.com'));
    print(jsonDecode(response.body));
  }
  
}