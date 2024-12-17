import 'package:flutter/material.dart';

class Shophome extends StatefulWidget {
  const Shophome({super.key});

  @override
  State<Shophome> createState() => _ShophomeState();
}

class _ShophomeState extends State<Shophome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("LustShop.com"),
        actions: [IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Card();
              },
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchBar(),
                IconButton(onPressed: (){}, icon:const Icon(Icons.list))
              ],
            ),
            SizedBox(height: 20,),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card();
              },
            ),
            
          ],
        ),
      ),
    );
  }
}