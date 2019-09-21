import 'package:flutter/material.dart';
import 'screen1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF090C22),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(child: Image(image: AssetImage('images/wheelerpngfinal.png'))),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      icon: Icon(
                        Icons.email,
                        size: 30,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      icon: Icon(
                        Icons.lock,
                        size: 30,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                child: Container(
                  width: 200,
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
                        child: Text("SIGNIN",
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
                child: Divider(
                  color: Colors.white,
                ),
                width: 300,
                height: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'New User?',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen1()));
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: Color(0xFF5d74e3),
                          fontFamily: "Poppins-Bold",
                          fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
