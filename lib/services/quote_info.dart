import 'package:http/http.dart';
import 'dart:convert';

class QuoteInfo{

  late List<dynamic> qt;
  late List<dynamic> at;

  QuoteInfo();

  Future<void> getquote() async{
    try{
      Response response = await get(Uri.parse('https://goquotes-api.herokuapp.com/api/v1/random?count=1'));
      Map data = jsonDecode(response.body);
      qt = data['quotes'];
      Response resp = await get(Uri.parse('https://goquotes-api.herokuapp.com/api/v1/all/authors'));
      Map data1 = jsonDecode(resp.body);
      at = data1['authors'];

      
    }
    catch(e){
      print('caught error : $e');
    }
  }
}