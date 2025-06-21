import 'dart:convert' show json;
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:pictureapp/src/models/image_model.dart';
import 'package:pictureapp/src/widgets/image_list.dart';

//stateful -> will have instance variables that will change
// //it also needs to update itself when data changes on execution time

//stateless will have none mutational variables

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

//abstract methods can be override by @override directive
// before concrete implementation
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  //get function returns an future
  //
  fetchImage() async {
    counter++;
    var result = await get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'),
      //OR it can be this way, but i prefer the upper one, looks better to me
      //await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter').then({})
    );
    var imgModel = ImageModel.fromJson(json.decode(result.body));

    //what set state does?
    //-> it calls function build() from flutter
    //it does not restart all application widgets
    //but restarts only the model we're asking for to change
    //it's use is also impossible to call it with stateless widgets
    setState(() {
      images.add(imgModel);
    });
  }

  //every time we ask for materialapp,scaffold, text, we are initializing
  // an new instance of the class
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(title: Text("nao sei se ta funcionando legal")),
      ),
    );
  }
}

//stateless -> does not contain variable data
//stateful otherwise does

//its not that simple to switch from stateless to stateful
// also, stateful widgets might be much more complicated than stateless ones
