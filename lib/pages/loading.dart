import 'package:flutter/material.dart';
import 'dart:math';
import 'package:quoted/services/quote_info.dart';

class Loading extends StatefulWidget {
  const Loading({ Key? key }) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Map dat = {};


  void takeQuote() async{

    QuoteInfo instance = QuoteInfo();
    await instance.getquote();
    List<dynamic> qot = instance.qt;
    int len = instance.at.length;
    List<dynamic> ath = instance.at;
    Random random = new Random();
    List<dynamic> option = List.filled(4, 0,growable: false);
    
    for(int i=0;i<3;i++){
      int randomnum = random.nextInt(len);
      option[i] = ath[randomnum]['name'];
    }
    option[3] = qot[0]['author'];

    int currIndex = 4;
    while(currIndex!=0){
      int ranNum = random.nextInt(currIndex);
      currIndex--;
      String temp = option[currIndex];
      option[currIndex] = option[ranNum];
      option[ranNum] = temp;

    }

    try{
      dat = ModalRoute.of(context)?.settings.arguments as Map;
    }
    catch(e){
      dat['round'] = 0;
      dat['score'] = 0;
    }  
    
    Navigator.pushReplacementNamed(context, '/question',arguments : {
      'quote' : qot[0]['text'],
      'answer' : qot[0]['author'],
      'options': option,
      'color0' : Colors.grey,
      'color1' : Colors.grey,
      'color2' : Colors.grey,
      'color3' : Colors.grey,
      'checked' : false,
      'round' : dat['round'],
      'score' : dat['score'],
      'times' : 0,
    });
  }

  @override
  void initState(){
    super.initState();
    takeQuote();
  }
  

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
      backgroundColor: Colors.blue[500],
      body : Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}