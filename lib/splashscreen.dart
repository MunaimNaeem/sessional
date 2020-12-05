import 'package:flutter/cupertino.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.grey
      ),
      home: SplashScreenWidget(),
    );
  }
}


class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          backgroundColor: Colors.white,
          navigateAfterSeconds: MyHomePage(title: "SECOND SESSIONAL",),
          loaderColor: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo.png"),
                        fit: BoxFit.contain
                    )
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Text("MUNAIM NAEEM",style:TextStyle(fontSize: 35,color: Colors.black),),
            Text("SP17-BCS-042",style:TextStyle(fontSize: 35,color: Colors.black),),
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: FlareActor(
                  "assets/loading.flr",
                  animation: "loading",
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}




