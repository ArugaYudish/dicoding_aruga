import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;
import 'content.dart';



class ZoomGambar extends StatefulWidget {


  @override
  _ZoomGambarState createState() => _ZoomGambarState();
}

class _ZoomGambarState extends State<ZoomGambar> {


  double _scale = 1.0;
  double _previousScale = 1.0;
  Color color = Colors.green;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text('Zoom Image'),
        actions: [
          MaterialButton(
            onPressed: () {
              setState(() {
                color= Colors.green;
              });
            },

           color: Colors.green,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                color= Colors.blue
                ;
              });
            },
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                color= Colors.redAccent;
              });
            },
            color: Colors.redAccent,
          ),
        ],


      ),
      body: ListView.builder(
        reverse: true,
        itemCount: chats.length,
          itemBuilder: (context, int index){


            final Pesan chat = chats[index];

            return GestureDetector(

              onScaleStart: (ScaleStartDetails details) {
                print(details);
                _previousScale = _scale;
                setState(() {
                  _scale = 0.8;
                });
              },
              onScaleUpdate: (ScaleUpdateDetails details) {
                print(details);
                _scale = _previousScale * details.scale;
                setState(() {
                  _scale = 1.8;
                });
              },
              onScaleEnd: (ScaleEndDetails details) {
                print(details);

                _previousScale = _scale;
                setState(() {
                  _scale=1.2;
                });
              },
              child: RotatedBox(


                quarterTurns: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.diagonal3(
                        Vector3(_scale, _scale, _scale)),
                    child: Image.network(
                        chat.pengirim.image

                    ),
                  ),
                ),
              ),
            );
          },
      ),
    );
  }
}
