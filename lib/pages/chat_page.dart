import 'package:chat_app/components/message_others.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.title});

  final String title;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
        centerTitle: true,
        shape: const Border(bottom: BorderSide(color: Colors.grey, width: 3)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: screenWidth * 0.036,
            ),
            MessageOthers(name: "Antony", message: "Hello World"),
            MessageOthers(name: "Antony", message: "Hello World"),
            MessageOthers(name: "Antony", message: "Hello World"),
            MessageOthers(name: "Antony", message: "Hello World"),
            MessageOthers(name: "Antony", message: "Hello World")
          ],
        ),
      ),
    );
  }
}
