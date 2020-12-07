import 'package:flutter/material.dart';
import 'hard.dart';
import 'dart:async';
import 'main.dart';
import 'dart:io';
import 'hard.dart';
int correct=1;
int right=0;
int wrong=0;
int count=1;
class guss extends StatefulWidget {
  void get_correct(int a)
  {
    correct=a;
  }
  @override
  _gussState createState() => _gussState();
}

class _gussState extends State<guss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About US"),
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text(
                'GUESS THE IMAGE',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child:setimage(1),
                  onPressed:() {
                    showAlertDialog(context,1);
                  },
                ),
                FlatButton(
                  child:setimage(2),
                  onPressed:() {
                    showAlertDialog(context,2);
                  },
                ),
                FlatButton(
                  child:setimage(3),
                  onPressed:() {
                    showAlertDialog(context,3);
                  },
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  child:setimage(4),
                  onPressed:() {
                    showAlertDialog(context,4);
                  },
                ),
                FlatButton(
                  child:setimage(5),
                  onPressed:() {
                    showAlertDialog(context,5);
                  },
                ),
                FlatButton(
                  child:setimage(6),
                  onPressed:() {
                    showAlertDialog(context,6);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context,int a) {
    if(count>=5)      {
      if(right>wrong)
      {
        AlertDialog alert = AlertDialog(
          title: Text(" CONGRATULATION YOU WON", style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.redAccent),),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }
      else{
        AlertDialog alert = AlertDialog(
          title: Text(" YOU LOSS ", style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.redAccent),),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }
      setState(() {
        count=1;
        right=0;
        wrong=0;
        Timer(Duration(seconds: 1), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp())));
      });

    }
    else
    {
      count++;
      if (correct == a) {
        right++;
        AlertDialog alert = AlertDialog(
          title: Text("CONGRATULATIONS yOU CHOOSE THE RIGHT DICE", style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.redAccent),),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
        setState(() {
          Timer(Duration(seconds: 1), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => hard())));
        });
      }
      else
      {
        wrong++;
        AlertDialog alert = AlertDialog(
          title: Text(" YOU CHOSE THE WRONG DICE    RIGHT IS $correct", style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.redAccent),),
        );

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
        setState(() {
          Timer(Duration(seconds: 1), ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => hard())));
        });
      }
    }

  }
  Widget setimage(int d)
  {
    return Image(
      height: 80,
      width: 80,
      image: AssetImage('assets/dice$d.png'),
    );
  }
}