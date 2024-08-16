import 'package:flutter/material.dart';

class LogowithLine extends StatelessWidget {
  const LogowithLine ({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
 color: Color.fromARGB(255, 206, 70, 215),
 height: 2.0,
 width: 100.0,

        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: "Bran"),
                TextSpan(text: "dy",
                style: TextStyle(color: Colors.black)
                ),
                TextSpan(
                  text: ".sa",
                  style: TextStyle(fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54
                  )
                )
              ]
              ),
              ),
      ],
    );
  }
}