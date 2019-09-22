import 'package:automob/Setup/SelectType.dart';
import 'package:automob/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFFFFFFF),


      body:SingleChildScrollView(
        child:Form(

          key: _formKey,
          child: Column(

            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(left: 10.0,top: 100.0,right:80.0,bottom: 10.0),
                  child: Image(image: AssetImage('images/wheelerpngfinal.png'))),

              Container(
                margin: const EdgeInsets.only(left:20.0,top:10.0,right: 20.0,bottom: 10.0),
                  child:TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return 'Provide an email';
                      }
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.blueGrey,),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0)))),
                    onSaved: (input) => _email = input,
                  ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child:TextFormField(
                  validator: (input) {
                    if(input.length < 6){
                      return 'Longer password please';
                     }
                   },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.blueGrey,),
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5.0)))),

                  onSaved: (input) => _password = input,
                  obscureText: true,
                ),
              ),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xFFE74577),
                    Color(0xFF2E12EB),
                  ]),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child:RaisedButton(
                  onPressed: signIn,
                  color: Colors.transparent,
                  child: Text("SIGNIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins-Bold",
                          fontSize: 18,
                          letterSpacing: 1.0)),
                ) ,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SelectType()));
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
          )
      ),
      ),
    );
  }

  void signIn() async {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(user: user)));
      }catch(e){
        print(e.message);
      }
    }
  }
}