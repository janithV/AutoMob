import 'package:flutter/material.dart';

import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF090C22),
        appBar: AppBar(
          backgroundColor: Color(0xFF090C22),
          title: Text('AutoMob'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              InkWell(
                child: Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFE74577),
                      Color(0xFF2E12EB),
                    ]),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text("SIGN IN AS A SELLER",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins-Bold",
                                fontSize: 18,
                                letterSpacing: 1.0)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFE74577),
                      Color(0xFF2E12EB),
                    ]),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2_1()));
                      },
                      child: Center(
                        child: Text("SIGN IN AS A BUYER",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins-Bold",
                                fontSize: 18,
                                letterSpacing: 1.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
