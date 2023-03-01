import 'dart:async';

import 'package:diskominfo/constans.dart';
import 'package:flutter/material.dart';
import 'package:diskominfo/users/landingpage.dart' as users;


class launcherpage extends StatefulWidget {
  @override
  State<launcherpage> createState() => _launcherpageState();
}

  class _launcherpageState extends State<launcherpage> {

  @override
  void initState() {
    super.initState();
    startLaunching();
  }
  @override
  void dispose() {
    super.dispose();
  }  
    
startLaunching() async {
    var duration = const Duration(seconds: 4);
    return new Timer(duration, () {
      Navigator.of(context)
          .pushReplacement(new MaterialPageRoute(builder: (_) =>
       new users.landingpage()));
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 4)
                    ],
                 
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment .bottomCenter,
                    colors: [palette.bg1, palette.bg2],
                    ), 
                    ), 
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment. center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Center(
                        child: new Image.asset(
                          "assets/logo1.png",
                          height: 700.0,
                          width: 700.0,
                          ),
                      ),

                    ],
          ),
        ),
        );
  }
  }