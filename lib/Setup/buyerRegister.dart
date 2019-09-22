import 'package:automob/Setup/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




class SignUpAsABuyer extends StatefulWidget {
  @override
  _SignUpAsABuyerState createState() => _SignUpAsABuyerState();
}

class _SignUpAsABuyerState extends State<SignUpAsABuyer> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password,_name,_tp;
  final databaseReference = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFFFFFFF),

      body: SingleChildScrollView(
      child:Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(left: 10.0,top: 100.0,right:80.0,bottom: 10.0),
                  child: Image(image: AssetImage('images/wheelerpngfinal.png'))),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height:80,
                child:TextFormField(
                  validator: (input) {
                    if(input.isEmpty){
                      return 'Provide an email';
                    }
                  },
                  decoration: InputDecoration(
                      labelText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))
                  ),
                  onSaved: (input) => _email = input,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height:80,
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
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))
                  ),
                  onSaved: (input) => _password = input,
                  obscureText: true,
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height:80,
                child: TextFormField(
                  validator: (input) {
                    if(input.isEmpty){
                      return 'Provide your full Name';
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))
                  ),
                  onSaved: (input) => _name = input,

                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                height: 80,
                child: TextFormField(
                  validator: (input) {
                    if(input.isEmpty){
                      return 'Provide your Telephone Number';
                    }
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Telephone Number',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(15.0)))
                  ),
                  onSaved: (input) => _tp= input,

                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50,vertical: 40),
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

                  color: Colors.transparent,
                  onPressed: signUp,

                  child: Text("REGISTER",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins-Bold",
                          fontSize: 18,
                          letterSpacing: 1.0)),
                ),

              ),
            ],
          )
        ),
      ),
    );
  }

  void signUp() async {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password).then((currentUser) => Firestore.instance
            .collection("users")
            .document(currentUser.uid)
            .setData({
          "uid": currentUser.uid,
          "email":currentUser.email,
          "fullName":_name,
          "telephone": _tp,
          "role": "buyer"
        }));

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }catch(e){
        print(e.message);
      }
    }
  }
}

class SignUpAsASeller extends StatefulWidget {
  @override
  _SignUpAsASellerState createState() => _SignUpAsASellerState();
}

class _SignUpAsASellerState extends State<SignUpAsASeller> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _shopname, _password,_ownername,_shoptp,_location,_email;
  final databaseReference = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFFFFFFF),

      body: SingleChildScrollView(
        child:Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(left: 10.0,top: 100.0,right:80.0,bottom: 10.0),
                    child: Image(image: AssetImage('images/wheelerpngfinal.png'))),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height:80,
                  child:TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return 'Provide a Shop Name';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Shop Name',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0)))
                    ),
                    onSaved: (input) => _shopname = input,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height:80,
                  child:TextFormField(
                    validator: (input) {
                      if(input.isEmpty) {
                        return 'Provide Owner\'s Name';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Owner\'s Name',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0)))
                    ),
                    onSaved: (input) => _ownername = input,
                    obscureText: false,
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height:80,
                  child: TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return 'Provide Shop Contact Number';
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Shop Contact Number',
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0)))
                    ),
                    onSaved: (input) => _shoptp = input,

                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  height: 80,
                  child: TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return 'Provide Shop Location';
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Shop Location',
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0)))
                    ),
                    onSaved: (input) => _location= input,

                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  height: 80,
                  child: TextFormField(
                    validator: (input) {
                      if(input.isEmpty){
                        return 'Provide an Email Address';
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Email Address',
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0)))
                    ),
                    onSaved: (input) => _email= input,

                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height:80,
                  child:TextFormField(
                    validator: (input) {
                      if(input.length < 6){
                        return 'Provide a Longer Password';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0)))
                    ),
                    onSaved: (input) => _ownername = input,
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50,vertical: 40),
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

                    color: Colors.transparent,
                    onPressed: signUp,

                    child: Text("REGISTER",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins-Bold",
                            fontSize: 18,
                            letterSpacing: 1.0)),
                  ),

                ),
              ],
            )
        ),
      ),
    );
  }

  void signUp() async {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password).then((currentUser) => Firestore.instance
            .collection("users")
            .document(currentUser.uid)
            .setData({
          "uid": currentUser.uid,
          "email":currentUser.email,
          "shopname":_shopname,
          "ownername" :_ownername,
          "shoptelephone": _shoptp,
          "role": "seller"
        }));

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }catch(e){
        print(e.message);
      }
    }
  }
}