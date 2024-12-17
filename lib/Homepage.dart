import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:const CircleAvatar(),
        title:const Text("Klust"),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart))
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.home)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.message))
        ],
      ),
    );
  }
}