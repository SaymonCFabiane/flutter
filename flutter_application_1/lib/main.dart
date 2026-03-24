import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: Center(
            child: Text("nome do meu app"),
          )
        ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ola mundo"),
            Icon(Icons.add_location_sharp)
          ],),
        )
      )
    )
  );
}
