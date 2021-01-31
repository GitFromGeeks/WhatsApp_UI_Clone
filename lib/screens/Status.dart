import 'package:flutter/material.dart';
import '../reusable/wcards.dart';
import '../model/chat.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        wcards(
            "My STATUS ",
            'https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
            'Tap to add status'),
        Divider(),
        Heading('Recent updates'),
        wcards(
            messageData[2].name, messageData[2].imageUrl, messageData[2].time),
        wcards(
            messageData[3].name, messageData[3].imageUrl, messageData[3].time),
        wcards(
            messageData[4].name, messageData[4].imageUrl, messageData[4].time),
        wcards(
            messageData[5].name, messageData[5].imageUrl, messageData[5].time),
        wcards(
            messageData[6].name, messageData[6].imageUrl, messageData[6].time),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, top: 5.0),
        child: Text(heading,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey)),
      ),
    );
  }
}
