import 'package:flutter/material.dart';

class Screen2_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Color(0xFF090C22),
        appBar: AppBar(
          title: Text('AutoMob'),
          backgroundColor: Color(0xFF090C22),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 50.00,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/dp.png'),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 60,
                child: Text('ENTER THE DETAILS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                  ),),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email Address',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Telephone Number',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))),
                ),
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: Divider(
                  color: Colors.white,
                ),
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
                        child: Text("REGISTER",
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
      ), );
  }
}
