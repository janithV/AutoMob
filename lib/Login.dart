import 'package:flutter/material.dart';
import 'SelectType.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                   margin: const EdgeInsets.only(left: 10.0,top: 100.0,right:80.0,bottom: 10.0),
                  child: Image(image: AssetImage('images/wheelerpngfinal.png'))),
              Container(
                margin: const EdgeInsets.only(left:20.0,top:10.0,right: 20.0,bottom: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.blueGrey,),
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5.0)))),
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
                      hintStyle: TextStyle(color: Colors.blueGrey,),
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5.0)))),
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
                    style: TextStyle(color: Colors.black, fontSize: 18),
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
