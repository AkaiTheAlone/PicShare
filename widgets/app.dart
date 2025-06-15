import 'package:flutter/material.dart';

//must define a build method that returns the widget
//this widget will show

//brief explanation on stateless and stateful ->
// stateless usually does not contain its own data
//stateful otherwise does maintain data, whether its heavy packages or not

// extends is : or inherits
class App extends StatelessWidget{
Widget build(context){
  return MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        print('fala primo');
      },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("nao sei se ta funcionando legal"),
      ),
    ),
  );
}
}
