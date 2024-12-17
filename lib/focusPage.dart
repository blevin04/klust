import 'package:flutter/material.dart';

class Focuspage extends StatefulWidget {
  const Focuspage({super.key});

  @override
  State<Focuspage> createState() => _FocuspageState();
}

class _FocuspageState extends State<Focuspage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Product Name"),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Placeholder(
              fallbackHeight: MediaQuery.of(context).size.height/3,
            ),
            const Divider(),
            ListTile(
              title: Text("Product Name"),
              subtitle: Text("Price"),
            ),
            Text("Description"),
            Placeholder(
              fallbackHeight: 200,
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        child:Row(
          children: [
            Container(
              alignment: Alignment.center,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                color: Colors.blue,
              ),
              child:const Text("Buy Now"),
            ),
            Container(
              alignment: Alignment.center,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
              child: const Text("Cart"),
            )
          ],
        ) ,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}