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
        padding:const EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text("User Name"),
              subtitle: Text("Last Message"),
              trailing: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                    ),
                    child: Text("2"),
                  ),
                  Icon(Icons.check)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}