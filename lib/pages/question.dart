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
    print(data);

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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: (){},
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
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: (){},
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
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: (){},
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
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: (){},
                ),
              ),
            ),
            Container(
             margin: EdgeInsets.fromLTRB(30, 50, 30, 0),
             child: ElevatedButton(
               child: Text(
                 'Next',
                 style: TextStyle(
                   fontSize: 20,
                 ),
               ),
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
               ),
               onPressed: (){},
             ), 
            ),
          ]
        ),
      ),
    );
  }
}