import 'package:flutter/material.dart';
import 'button.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.cyan,

      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  late int firstOperand;
  late int secondOperand;
   String res='';
  late String operator;
   String texttoDisplay='';
   String history='';
  void buttonOnclick(String buttonValue){
    print(buttonValue);
    if(buttonValue=='C'){
      firstOperand=0;
      secondOperand=0;
      texttoDisplay='';
      res='';

    }
    else if(buttonValue=='AC'){
      firstOperand=0;
      secondOperand=0;
      texttoDisplay='';
      res='';
      history='';
    }
    else if(buttonValue=='+/-'){
      if(texttoDisplay[0]!='-'){
        res='-'+texttoDisplay;
      }
      else{
        res=texttoDisplay.substring(1);
      }
    }
    else if(buttonValue=='<'){
      res=texttoDisplay.substring(0,texttoDisplay.length-1);
    }
    else if(buttonValue=='+' || buttonValue=='-' ||buttonValue=='X' || buttonValue=='/'){
      firstOperand=int.parse(texttoDisplay);
      res='';
      operator=buttonValue;
    }
    else if(buttonValue=='='){
      secondOperand=int.parse(texttoDisplay);
      if(operator=='+'){
        res=(firstOperand+secondOperand).toString();
        history=firstOperand.toString()+operator+secondOperand.toString();
      }
      if(operator=='-'){
        res=(firstOperand-secondOperand).toString();
        history=firstOperand.toString()+operator+secondOperand.toString();
      }
      if(operator=='X'){
        res=(firstOperand*secondOperand).toString();
        history=firstOperand.toString()+operator+secondOperand.toString();
      }
      if(operator=='/'){
        res=(firstOperand/secondOperand).toStringAsFixed(2);
        history=firstOperand.toString()+operator+secondOperand.toString();
      }
    }
    else{
      res=int.parse(texttoDisplay+buttonValue).toString();
    }
    setState(() {
      texttoDisplay=res;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(

          ),
        ),
      ),
      backgroundColor: Color(0xff28527a),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Text(
                  history,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1.0,1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  texttoDisplay,
                  style: TextStyle(
                    fontSize: 48.0,
                    color: Colors.white,
                  ),
                ),
              ),
              alignment: Alignment(1.0,1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: 'AC',
                  fillColors: 0xFF8ac4d0,
                  textColors: 0xff000000,
                  textSize: 13.0,
                  callback: (){
                    buttonOnclick('AC');
                  },
                ),
                Button(
                  text: 'C',
                  fillColors: 0xFF8ac4d0,
                  textColors: 0xff000000,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('C');
                  },
                ),
                Button(
                  text: '<',
                  fillColors: 0xFFf4d160,
                  textColors: 0xff000000,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('<');
                  },
                ),
                Button(
                  text: '/',
                  fillColors: 0xFF8ac4d0,
                  textColors: 0xff000000,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('/');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: '9',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('9');
                  },
                ),
                Button(
                  text: '8',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('8');
                  },
                ),
                Button(
                  text: '7',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('7');
                  },
                ),
                Button(
                  text: 'X',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('X');
                  },
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: '6',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('6');
                  },
                ),
                Button(
                  text: '5',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('5');
                  },
                ),
                Button(
                  text: '4',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('4');
                  },
                ),
                Button(
                  text: '-',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('-');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: '3',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('3');
                  },
                ),
                Button(
                  text: '2',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('2');
                  },
                ),
                Button(
                  text: '1',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('1');
                  },
                ),
                Button(
                  text: '+',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('+');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: '+/-',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 13.0,
                  callback: (){
                    buttonOnclick('+/-');
                  },
                ),
                Button(
                  text: '0',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('0');
                  },
                ),
                Button(
                  text: '00',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 15.0,
                  callback: (){
                    buttonOnclick('00');
                  },
                ),
                Button(
                  text: '=',
                  textColors: 0xff000000,
                  fillColors: 0xFF8ac4d0,
                  textSize: 25.0,
                  callback: (){
                    buttonOnclick('=');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
