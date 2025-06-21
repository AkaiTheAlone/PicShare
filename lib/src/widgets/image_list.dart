import 'package:flutter/material.dart';
import 'package:pictureapp/src/models/image_model.dart';

//this one is a stateless widget since we are going to change the list
//and not the widget itself
class ImageList extends StatelessWidget {
  //final keyword -> a property cannot be redefined after initialized
  //for instance, if i try to set this list after using its constructor
  //it wont be possible
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
          return Text(images[index].url);
      }
    );
  }
}
