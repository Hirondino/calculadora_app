import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

/* class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Center(
          child: Text(
            'View\n\n' +
                '[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                '[MediaQuery orientation]: $orientation',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
} */

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      /* appBar: AppBar(
        backgroundColor: Colors.black,
        // title: Text("Orientation"),
      ), */
      /* appBar: AppBar(
        title: Text("Orientation"),
      ), */
      body: OrientationBuilder(
        builder: (context, orientation) {
          if(orientation == Orientation.portrait) {
            return portrait();
          }else {
            return landscape();
          }
        }
      )
    );
  }

  Widget portrait() {
    /* return Center(
      child: Text(
        'Portrait',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0
        ),
      )
    ); */
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100
                    ),
                  ),
                )
              ],
            ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('AC', Colors.grey, Colors.black),
                calcButton('+/-', Colors.grey, Colors.black),
                calcButton('%', Colors.grey, Colors.black),
                calcButton('÷', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('7', Colors.grey[850], Colors.white),
                calcButton('8', Colors.grey[850], Colors.white),
                calcButton('9', Colors.grey[850], Colors.white),
                calcButton('X', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('4', Colors.grey[850], Colors.white),
                calcButton('5', Colors.grey[850], Colors.white),
                calcButton('6', Colors.grey[850], Colors.white),
                calcButton('-', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('1', Colors.grey[850], Colors.white),
                calcButton('2', Colors.grey[850], Colors.white),
                calcButton('3', Colors.grey[850], Colors.white),
                calcButton('+', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed: () {},
                  shape: StadiumBorder(),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.grey[850],
                ),
                calcButton('.', Colors.grey[850], Colors.white),
                calcButton('=', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      );
  }

  Widget landscape() {
    /* return Center(
      child: Text(
        'Landscape',
        style: TextStyle(
          color: Colors.red,
          fontSize: 30.0
        ),
      )
    ); */
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '0',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60
                  ),
                ),
              )
            ],
          ),
          // SizedBox(height: 10,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              calcBtnLandscape('(', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape(')', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('mc', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('m+', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('m-', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('mr', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('AC', Colors.grey, Colors.black),
              Spacer(),
              calcBtnLandscape('+/-', Colors.grey, Colors.black),
              Spacer(),
              calcBtnLandscape('%', Colors.grey, Colors.black),
              Spacer(),
              calcBtnLandscape('÷', Colors.amber[700], Colors.white),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              calcBtnLandscape('2nd', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('X2', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('X3', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('Xy', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('ex', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('10x', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('7', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('8', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('9', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('X', Colors.amber[700], Colors.white),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              calcBtnLandscape('1/x', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('2√x', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('3√x', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('y√x', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('ln', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('log10', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('4', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('5', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('6', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('-', Colors.amber[700], Colors.white),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              calcBtnLandscape('x!', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('sin', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('cos', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('tan', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('e', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('EE', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('1', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('2', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('3', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('+', Colors.amber[700], Colors.white),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              calcBtnLandscape('Rad', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('sinh', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('cosh', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('tanh', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('π', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnLandscape('Rand', Colors.grey[900], Colors.white),
              Spacer(),
              calcBtnZeroLandscape('0', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape(',', Colors.grey[850], Colors.white),
              Spacer(),
              calcBtnLandscape('=', Colors.amber[700], Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget calcButton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          // calculation(btntxt);
        },
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor
          ),
        ),
        shape: CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      ),
    );
  }

  Widget calcBtnLandscape(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: ButtonTheme(
        minWidth: 60.0,
        child: RaisedButton(
        onPressed: () {
          // calculation(btntxt);
        },
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 20,
            color: txtcolor
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        color: btncolor,
        padding: EdgeInsets.all(13.0),
      ),
      ),
    );
  }

  Widget calcBtnZeroLandscape(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: ButtonTheme(
        minWidth: 130.0,
        child: RaisedButton(
        onPressed: () {
          // calculation(btntxt);
        },
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 20,
            color: txtcolor
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        color: btncolor,
        padding: EdgeInsets.all(13.0),
      ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  /* MyHomePage({Key key, this.title}) : super(key: key);
  final String title; */

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100
                    ),
                  ),
                )
              ],
            ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('AC', Colors.grey, Colors.black),
                calcButton('+/-', Colors.grey, Colors.black),
                calcButton('%', Colors.grey, Colors.black),
                calcButton('÷', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('7', Colors.grey[850], Colors.white),
                calcButton('8', Colors.grey[850], Colors.white),
                calcButton('9', Colors.grey[850], Colors.white),
                calcButton('X', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('4', Colors.grey[850], Colors.white),
                calcButton('5', Colors.grey[850], Colors.white),
                calcButton('6', Colors.grey[850], Colors.white),
                calcButton('-', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('1', Colors.grey[850], Colors.white),
                calcButton('2', Colors.grey[850], Colors.white),
                calcButton('3', Colors.grey[850], Colors.white),
                calcButton('+', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                  onPressed: () {},
                  shape: StadiumBorder(),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.grey[850],
                ),
                calcButton('.', Colors.grey[850], Colors.white),
                calcButton('=', Colors.amber[700], Colors.white),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ) 
      
    );

  }

  Widget calcButton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          calculation(btntxt);
        },
        child: Text(
          btntxt,
          style: TextStyle(
            fontSize: 35,
            color: txtcolor
          ),
        ),
        shape: CircleBorder(),
        color: btncolor,
        padding: EdgeInsets.all(20),
      ),
    );
  }

  //Calculator logic
  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
   void calculation(btnText) {


    if(btnText  == 'AC') {
      text ='0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    
    } else if( opr == '=' && btnText == '=') {

      if(preOpr == '+') {
         finalResult = add();
      } else if( preOpr == '-') {
          finalResult = sub();
      } else if( preOpr == 'x') {
          finalResult = mul();
      } else if( preOpr == '÷') {
          finalResult = div();
      } 

    } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

      if(numOne == 0) {
          numOne = double.parse(result);
      } else {
          numTwo = double.parse(result);
      }

      if(opr == '+') {
          finalResult = add();
      } else if( opr == '-') {
          finalResult = sub();
      } else if( opr == 'x') {
          finalResult = mul();
      } else if( opr == '/') {
          finalResult = div();
      } 
      preOpr = opr;
      opr = btnText;
      result = '';
    }
    else if(btnText == '%') {
     result = numOne / 100;
     finalResult = doesContainDecimal(result);
    } else if(btnText == '.') {
      if(!result.toString().contains('.')) {
        result = result.toString()+'.';
      }
      finalResult = result;
    }
    
    else if(btnText == '+/-') {
        result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();        
        finalResult = result;        
    
    } 
    
    else {
        result = result + btnText;
        finalResult = result;        
    }


    setState(() {
          text = finalResult;
        });

  }


  String add() {
         result = (numOne + numTwo).toString();
         numOne = double.parse(result);           
         return doesContainDecimal(result);
  }

  String sub() {
         result = (numOne - numTwo).toString();
         numOne = double.parse(result);
         return doesContainDecimal(result);
  }
  String mul() {
         result = (numOne * numTwo).toString();
         numOne = double.parse(result);
         return doesContainDecimal(result);
  }
  String div() {
          result = (numOne / numTwo).toString();
          numOne = double.parse(result);
          return doesContainDecimal(result);
  }


  String doesContainDecimal(dynamic result) {
    
    if(result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if(!(int.parse(splitDecimal[1]) > 0))
         return result = splitDecimal[0].toString();
    }
    return result; 
  }

}
