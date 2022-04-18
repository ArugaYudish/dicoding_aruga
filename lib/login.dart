import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_aruga/register.dart';
import 'package:dicoding_aruga/homes.dart';

class Login extends StatelessWidget{

  Widget build(BuildContext context){

    Size size = MediaQuery.of(context).size;
    return Scaffold(


      body: ListView(


          children: <Widget> [
            Container(
              margin: EdgeInsets.only(top: 100),
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
              margin: EdgeInsets.only(top: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget> [

                  ElevatedButton(


                    child: const Text(
                      'Login',

                      style: TextStyle(
                        fontSize: 20,

                      ),
                    ),


                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                            return Homes();
                          },
                        ),
                      );
                    },
                  ),

                  OutlineButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context){
                              return Register();
                            },
                          ),
                        );
                      },


                    child: Text('Register',
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
