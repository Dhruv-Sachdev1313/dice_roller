import 'package:flutter/material.dart';
import 'dart:math';
class HomePage extends StatefulWidget {
  @override
   _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AssetImage one =AssetImage("images/one.png");
  AssetImage two =AssetImage("images/two.png");
  AssetImage three =AssetImage("images/three.png");
  AssetImage four =AssetImage("images/four.png");
  AssetImage five =AssetImage("images/five.png");
  AssetImage six =AssetImage("images/six.png");

  AssetImage diceimage;
  AssetImage diceimage1;

  @override
  void initState(){
    super.initState();
    setState(() {
      diceimage = one;
      diceimage1 = one;
    });
  }

  void rollDice(){
    int random = (1+Random().nextInt(6));
    int random1 = (1+Random().nextInt(6));

    AssetImage newImage;
    AssetImage newImage1;

    switch (random) {
      case 1:
        newImage =one;
        break;
      case 2:
        newImage =two;
        break;
      case 3:
        newImage =three;
        break;
      case 4:
        newImage =four;
        break;
      case 5:
        newImage =five;
        break;
      case 6:
        newImage =six;
        break;  
      
    }
    switch (random1) {
      case 1:
        newImage1 =one;
        break;
      case 2:
        newImage1 =two;
        break;
      case 3:
        newImage1 =three;
        break;
      case 4:
        newImage1 =four;
        break;
      case 5:
        newImage1 =five;
        break;
      case 6:
        newImage1 =six;
        break;  
      
    }
    setState(() {
      diceimage = newImage;
      diceimage1 = newImage1;
    });
  }


   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: diceimage ,
                    width: 100.0,
                    height: 100.0,
                  ),
                
              
                  Image(
                    image: diceimage1,
                    width: 100.0,
                    height: 100.0,
              ),
              ],
              ),
              
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                  child: Text('Roll the dice!'),
                  onPressed: rollDice,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 