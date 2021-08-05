import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar : AppBar(
        backgroundColor: Colors.blue[900],
        title : Text('Quotemania'),
        centerTitle : true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child : Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "You will be provided with a quote and you have to select the author of quote from given 4 options.\nThere will be a total of 10 questions.",
                style: TextStyle(
                  color : Colors.white,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin : EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: SizedBox(
                  height: 45,
                  width: 150,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape : MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: BorderSide(color: Colors.red),
                        )
                      )
                    ),
                    onPressed: (){
                      print("I think its working");
                      Navigator.pushReplacementNamed(context, '/loading');
                    },
                     child: Text(
                       'Start',
                       style: TextStyle(
                         fontSize: 30.0,
                       ),
                     ),
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}