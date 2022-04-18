import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_aruga/home.dart';
import 'package:dicoding_aruga/login.dart';

class Register extends StatelessWidget{

  Widget build(BuildContext context){
    String name='';

    Size size = MediaQuery.of(context).size;
    return Scaffold(


      body: ListView(


        children: <Widget> [
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Image.asset('image/logo.jpg'),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, ),

            child: TextField(

              decoration: InputDecoration(
                hintText: 'Username',
                labelText: 'Username',
                fillColor: Colors.black,

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, right: 25, ),


            child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  fillColor: Colors.black,

                )

            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 25, right: 25, ),


            child: TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  labelText: 'Confirm Password',
                  fillColor: Colors.black,

                )

            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget> [
                ElevatedButton(


                  child: const Text(
                    'Register',

                    style: TextStyle(
                      fontSize: 20,

                    ),
                  ),


                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return Login();
                        },
                      ),
                    );
                  },
                ),

                OutlineButton(
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return Login();
                        },
                      ),
                    );

                  },
                  child: Text('Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,

                    ),
                  ),
                ),



              ],

            ),
          ),

        ],
      ),

    );


  }
}
