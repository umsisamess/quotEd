import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({ Key? key }) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  Map data = {};



  @override
  Widget build(BuildContext context) {

  data = ModalRoute.of(context)?.settings.arguments as Map;

  void changeColour(opt,ans){
    setState(() {
      data['color0'] = opt[0]==ans?Colors.green:Colors.red[400];
      data['color1'] = opt[1]==ans?Colors.green:Colors.red[400];
      data['color2'] = opt[2]==ans?Colors.green:Colors.red[400];
      data['color3'] = opt[3]==ans?Colors.green:Colors.red[400];
    });
    
  }

    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(30, 100, 30, 0),
              child: Text(
                data['quote'],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              width: double.infinity,
              child: SizedBox(
                height: 35,
                child: ElevatedButton(
                  child: Text(
                    data['options'][0],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: (){
                    data['checked'] = true;
                    setState(() {
                      changeColour(data['options'],data['answer']);
                      data['times']++;
                      if(data['times']==1){
                        data['round']++;
                        if(data['answer']==data['options'][0]){
                          data['score']++;
                        }
                      }
                    });
                    
                    // String btnText = data['options'][0];
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(data['color0']),
                  ),
                  
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              width: double.infinity,
              child: SizedBox(
                height: 35,
                child: ElevatedButton(
                  child: Text(
                    data['options'][1],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(data['color1']),
                  ),
                  onPressed: (){
                    data['checked'] = true;
                    setState(() {
                      changeColour(data['options'],data['answer']);
                      data['times']++;
                      if(data['times']==1){
                        data['round']++;
                        if(data['answer']==data['options'][1]){
                          data['score']++;
                        }
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              width: double.infinity,
              child: SizedBox(
                height: 35,
                child: ElevatedButton(
                  child: Text(
                    data['options'][2],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(data['color2']),
                  ),
                  onPressed: (){
                    data['checked'] = true;
                    setState(() {
                      changeColour(data['options'],data['answer']);
                      data['times']++;
                      if(data['times']==1){
                        data['round']++;
                        if(data['answer']==data['options'][2]){
                          data['score']++;
                        }
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              width: double.infinity,
              child: SizedBox(
                height: 35,
                child: ElevatedButton(
                  child: Text(
                    data['options'][3],
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(data['color3']),
                  ),
                  onPressed: (){
                    data['checked'] = true;
                    setState(() {
                      changeColour(data['options'],data['answer']);
                      data['times']++;
                      if(data['times']==1){
                        data['round']++;
                        if(data['answer']==data['options'][3]){
                          data['score']++;
                        }
                      }
                    });
                  },
                ),
              ),
            ),
            Container(
             margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
             child: SizedBox(
               height: 45,
               width: 150,
               child: ElevatedButton(
                 child: Text(
                   'Next',
                   style: TextStyle(
                     fontSize: 20,
                   ),
                 ),
                 style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(28),
                     )
                   )
                 ),
                 onPressed: (){
                    if(data['checked']){
                      if(data['round']==10){
                        Navigator.restorablePushReplacementNamed(context, '/result',arguments: {
                          'score' : data['score'],
                        });
                      }
                      else{
                        Navigator.pushReplacementNamed(context, '/loading',arguments: {
                          'round' : data['round'],
                          'score' : data['score'],
                        });
                      }
                      
                    }
                 },
               ),
             ), 
            ),
          ]
        ),
      ),
    );
  }
}