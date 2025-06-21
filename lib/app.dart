import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

//stateful -> will have instance variables that will change
//it also needs to update itself when data changes on execution time

//stateless will have none mutational variables

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return AppState();
  }
}

void fetchImage(){
  get('https://jsonplaceholder.typicode.com/photos')
}

//abstract methods can be override by @override directive
// before concrete implementation
class AppState extends State<App> {
  int counter = 0;
//every time we ask for materialapp,scaffold, text, we are initializing
// an new instance of the class
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter') ,
        floatingActionButton: FloatingActionButton(onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("nao sei se ta funcionando legal"),
        ),
      ),
    );
  }
}

//stateless -> does not contain variable data
//stateful otherwise does

//its not that simple to switch from stateless to stateful
// also, stateful widgets might be much more complicated than stateless ones