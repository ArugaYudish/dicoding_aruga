import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dicoding_aruga/login.dart';
import 'package:dicoding_aruga/register.dart';

class Home extends StatelessWidget{

  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;

    return Scaffold(

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Image.asset('image/logo.jpg'),

            Container(
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
        ) ,



      ),
    );
  }


}
