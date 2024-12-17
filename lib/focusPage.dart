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
              title: Text("Product Name",style: TextStyle(fontSize: 27)),
              subtitle: Text("Price",style: TextStyle(fontSize: 20)),
            ),
            Text("Description",style: TextStyle(fontSize: 16)),
            Placeholder(
              fallbackHeight: 200,
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: MediaQuery.of(context).size.width-100,
        child:Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration:const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                  color: Colors.blue,
                ),
                child:const Text("Buy Now",style: TextStyle(fontSize: 17),),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration:const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                ),
                child: const Text("Cart",style: TextStyle(fontSize: 17)),
              ),
            )
          ],
        ) ,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}