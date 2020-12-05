import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:io';
import 'package:alert_dialog/alert_dialog.dart';
class simple extends StatefulWidget {
  @override
  _simpleState createState() => _simpleState();
}

class _simpleState extends State<simple> {
  int left_dice=1;
  int right_dice=1;
  int left_count=0;
  int right_count=0;
  String winer=null;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("SIMPLE DICE ROLLER", style: TextStyle(fontSize: 30,color: Colors.yellow),),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    left_dice=Random().nextInt(5)+1;
                    left_count=left_count+left_dice;
                  });
                }
                  , child: Image(
                    image: AssetImage('assets/dice$left_dice.png'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: (){
                  setState(() {
                    right_dice=Random().nextInt(5)+1;
                    right_count=right_count+right_dice;
                  });
                }
                  , child: Image(
                    image: AssetImage('assets/dice$right_dice.png'),
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(top: 100),
            child: FlatButton(onPressed: (){
              setState(() {
                Check();
                alert(
                  context,
                  title: Text('WINER IS',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
                  content: Text('$winer',textAlign: TextAlign.center,style: TextStyle(fontSize: 30)),
                  textOK: Text('DONE'),
                );
              });
            }
                , child: Text("RESULT",style: TextStyle(fontSize: 30,color: Colors.white),)),
          ),
        ],
      ),
    );
  }
  void Check()
  {
    if (left_count>=right_count)
    {
      winer= "Winer is Left Dice";
    }
    else
    {
      winer= "Winer is Right Dice";
    }
  }
}