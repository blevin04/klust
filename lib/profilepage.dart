import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              
            ),
            const SizedBox(height: 20,),
            Text("User Name"),
            const SizedBox(height: 20,),
            Text("Bio"),
            Placeholder(
              fallbackHeight: 200,
            ),
          ],
        ),
      ),
    );
  }
}