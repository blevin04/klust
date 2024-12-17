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
      endDrawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Placeholder(

              ),
            ),
            const SizedBox(height: 20,),
            Text("User Name",style: TextStyle(fontSize: 30),),
            const SizedBox(height: 20,),
            Text("Bio",style: TextStyle(fontSize: 20),),
            Placeholder(
              fallbackHeight: 200,
            ),
          ],
        ),
      ),
    );
  }
}