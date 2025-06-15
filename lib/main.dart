import 'package:flutter/material.dart';

//there are 3 different imports directive
//word package informs flutter we are importing
//from a third party lib

void main(){
  var app = MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print('hi there!');
      }, 
        child: Text("+"),
      ),
      appBar: AppBar(
        title: Text("nao sei se ta funcionando legal"),
      ),
    ),
  );

  runApp(app);
}