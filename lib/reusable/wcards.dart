import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class wcards extends StatelessWidget {
  final String name, imageurl, time;

  wcards(this.name, this.imageurl, this.time);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25,
        backgroundImage: NetworkImage(imageurl),
        foregroundColor: Colors.deepOrange[400],
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(time),
    );
  }
}
