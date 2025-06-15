import 'package:flutter/material.dart';



//stateful -> will have instance variables that will change
//it also needs to update itself when data changes on execution time

//stateless will have none mutational variables

class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return AppState();
  }
}

//abstract methods can be override by @override directive
// before concrete implementation
class AppState extends State<App> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
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


//stateless -> does not contain variable data
//stateful otherwise does

//its not that simple to switch from stateless to stateful
// also, stateful widgets might be much more complicated than stateless ones