import 'package:http/http.dart';
import 'dart:convert';

class QuoteInfo{

  late String quote;
  late String author;

  QuoteInfo();

  Future<void> getquote() async{
    try{
      Response response = await get(Uri.parse('https://goquotes-api.herokuapp.com/api/v1/random?count=1'));
      Map data = jsonDecode(response.body);
      List<dynamic> qt = data['quotes'];
      quote = qt[0]['text'];
      author = qt[0]['author'];
      
    }
    catch(e){
      print('caught error : $e');
    }
  }
}