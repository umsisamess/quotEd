import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({ Key? key }) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  Map data = {};
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map;
    int score = data['score'];

    return Scaffold(
        backgroundColor: Colors.blue[500],
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(30, 200, 30, 0),
                child: Text(
                  'Score : $score',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30, 100, 30, 0),
                child: SizedBox(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
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
                      Navigator.pushReplacementNamed(context, '/');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}