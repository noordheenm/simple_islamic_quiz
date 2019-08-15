import 'package:flutter/material.dart';
import './quiz.dart';

import 'result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;
  void _resetQuiz() {
     setState(() {
      _questionIndex = 0;
      _totalScore = 0;
     });
  }
  final _questions = const [
      {
        'questionText':'1.What does Islam mean?',
        'answers':[
          {'text':'Islam means to obey Allah (SWT) and follow His commands','score':10},
          {'text':'Islam means to obey our parents','score':0},
          {'text':'Islam means to obey our teachers and elders','score':0},
          {'text':'None of the above','score':0}
        ],      
      },
      {
        'questionText':'2.Who created the Universe?',
        'answers':[
          {'text':'Allaah SWT','score':10},
          {'text':'Mohammed PBUH','score':0},
          {'text':'Eesa ALA','score':0},
          {'text':'Adam ALA','score':0}
        ],      
      },
      {
        'questionText':'3.Who is the real and only one God to pray?',
        'answers':[ 
          {'text':'Mohammed PBUH','score':0},
          {'text':'Eesa ALA','score':0},
          {'text':'Adam ALA','score':0},
          {'text':'Allaah SWT','score':10},
        ],         
      },
      {
        'questionText':'4.Who created the Earth, Moon, Sun, Sky, Universe?',
        'answers':[
          {'text':'Mohammed PBUH','score':0},
          {'text':'Eesa ALA','score':0},
          {'text':'Allaah SWT','score':10},
          {'text':'Adam ALA','score':0}
        ],  
      },
      {
        'questionText':'5.Howmany names and attribute belongs to Allaah(SWT)?',
        'answers':[
          {'text':'100','score':0},
          {'text':'99','score':0},
          {'text':'Allaah only knows','score':10},
          {'text':'1000','score':0}
        ], 
      },
      {
        'questionText':'6.Allah (s.w.t.) has ......…',
        'answers':[
          {'text':'No partner','score':10},
          {'text':'A son','score':0},
          {'text':'A partner','score':0},
          {'text':'A daughter','score':0}
        ],      
      },
      {
        'questionText':'7.Believing in Allah (s.w.t.) , in His angels, in His books, in His messengers, in the last day, in destiny and in life after death means a Muslim has …',
        'answers':[
          {'text':'Iman','score':10},
          {'text':'Ihsan','score':0},
          {'text':'Taqwa','score':0},
          {'text':'Islam','score':0}
        ],      
      },
      {
        'questionText':'8.According to Surah Al-\'Asr, man is surely in loss except those:',
        'answers':[ 
          {'text':'Who have faith','score':0},
          {'text':'Who do good works','score':0},
          {'text':'Encourage one another to follow the Truth and encourage to be steadfast','score':10},
          {'text':'All of the above','score':0},
        ],         
      },
      {
        'questionText':'9."You alone we worship and you alone do we ask for help" is a phrase from which Surah?',
        'answers':[
          {'text':'Al-Ikhlas','score':0},
          {'text':'Al-\'Asr','score':0},
          {'text':'Al-Fatihah','score':10},
          {'text':'Al-Kawthar','score':0}
        ],  
      },
      {
        'questionText':'10.What is the meaning of "Astaghfirullah" ?',
        'answers':[
          {'text':'We are for Allah','score':0},
          {'text':'Accept our prayer','score':0},
          {'text':'I ask Allah for Forgiveness','score':10},
          {'text':'None of the above','score':0}
        ], 
      } 
    ];
  _answerQuestions(int score) {
    _totalScore+=score;
    setState(() {
       _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    print(_totalScore);
  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text('Simple Islamic Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions,) 
              : Result(_totalScore,_resetQuiz),
      ),
    );      
  }
}
