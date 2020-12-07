import 'package:flare_tutorial/main.dart';
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
    return Scaffold(
        appBar: AppBar(title: Text("SIMPLE LEVEL",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.green,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage('https://drive.google.com/file/d/18SC4KsiMOCZxzIDaqKXTsHTPlH8lkOnt/view?usp=sharing',
                        ),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                    Text(
                      'MUNAIM NAEEM', style: TextStyle(fontSize: 22, color: Colors.white,
                    ),
                    ),
                    Text(
                      'Munaimnaeem@gmail.com', style: TextStyle(fontSize: 20, color: Colors.white,
                    ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('PROFILE', style: TextStyle(fontSize: 20,
              ),
              ),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('BACK TO HOME', style: TextStyle(fontSize: 20,
              ),
              ),
              onTap: () {
                Navigator.pop(context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('EXIT', style: TextStyle(fontSize: 20,
              ),
              ),
              onTap: (){
                exit(0);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.teal,
      body: Container(
      color: Colors.white24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("SIMPLE DICE ROLLER", style: TextStyle(fontSize: 30,color: Colors.white, fontWeight: FontWeight.bold),),
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