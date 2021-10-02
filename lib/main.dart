import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int totalScore = 0;
  int football = 0;
  int anime = 0;
  int code = 0;
  String textResult = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Daily Activity Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Column(
            children: [
              Text('Score for Today'),
              Text('$totalScore'),
              Text(textResult),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: () {
                    setState(() {
                      totalScore = football + anime + code;
                      if (totalScore == 300){
                        textResult = 'Perfect Score';
                      }else if (totalScore > 100 && totalScore < 300 ){
                        textResult = 'You can do better tomorrow';
                      }else if (totalScore < 100){
                        textResult = 'I don\'t know what to say';
                      }
                    });
                  }, child: Text('Calculate total Score')),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        totalScore = 0;
                        football = 0;
                        anime = 0;
                        code = 0;
                      });
                    },
                    child: Text('Clear'),
                  )
                ],
              ),
          ],
        ),
            SizedBox(height: 30,),
            Text('Played FootBall'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                  setState(() {
                    football = football - 50;
                  });
                }, icon: Icon(Icons.remove)),
                Text('$football'),
                IconButton(onPressed: () {
                  setState(() {
                    football = football + 50;
                  });
                }, icon:Icon(Icons.add))
              ],
            ),
            SizedBox(height: 30,),
            Text('Watched Anime'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                  setState(() {
                    anime = anime - 50;
                  });
                }, icon: Icon(Icons.remove)),
                Text('$anime'),
                IconButton(onPressed: () {
                  anime = anime + 50;
                }, icon:Icon(Icons.add))
              ],
            ),
            SizedBox(height: 30,),
            Text('Code for 6 hours'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                  setState(() {
                    code = code - 50;
                  });
                }, icon: Icon(Icons.remove)),
                Text('$code'),
                IconButton(onPressed: () {
                  code = code + 50;
                }, icon:Icon(Icons.add))
              ],
            ),
          ],
        ),
      ),
    );
  }
}


