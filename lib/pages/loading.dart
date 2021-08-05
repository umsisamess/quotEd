import 'package:flutter/material.dart';
import 'package:quoted/services/quote_info.dart';

class Loading extends StatefulWidget {
  const Loading({ Key? key }) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void takeQuote() async{
    QuoteInfo instance = QuoteInfo();
    await instance.getquote();
    print(instance.quote);
    print(instance.author);
    // Navigator.pushReplacementNamed(context, '/question',arguments : {

    // });
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