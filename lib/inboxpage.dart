import 'package:flutter/material.dart';

class Inboxpage extends StatefulWidget {
  const Inboxpage({super.key});

  @override
  State<Inboxpage> createState() => _InboxpageState();
}

class _InboxpageState extends State<Inboxpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card();
        },
      ),
    );
  }
}