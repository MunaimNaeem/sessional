import 'package:flare_tutorial/main_drawer.dart';
import 'package:flare_tutorial/splashscreen.dart';
import 'package:flutter/material.dart';
import 'Simple.dart';
import 'hard.dart';
import './main_drawer.dart';
void main() => runApp(SplashScreenPage());

class MyApp extends StatelessWidget {
  // This widget is the root of your ap
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SECOND SESSIONAL',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'SECOND SESSIONAL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: Text('HOME PAGE'),
      ),
      drawer: MainDrawer(),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text ("SELECT LEVEL", style: TextStyle(fontSize: 40, color: Colors.white),),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50, width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.only(right: 35),
                  child: FlatButton(onPressed: (){
                    setState(() {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>simple()));
                    });
                  },
                    child: Text("Simple",style: TextStyle(fontSize: 35,color: Colors.redAccent),),
                  ),
                ),
                Container(
                  height: 50, width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.only(left: 20),
                  child: FlatButton(onPressed: (){
                    setState(() {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>hard()));
                    });
                  },
                    child: Text("Hard",style: TextStyle(fontSize: 35,color: Colors.redAccent),),
                  ),
                )
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
