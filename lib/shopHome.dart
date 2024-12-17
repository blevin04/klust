import 'package:flutter/material.dart';
import 'package:klust/focusPage.dart';

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
            const Divider(),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Card();
              },
            ),
            const Divider(),
            SearchBar(),
            const SizedBox(height: 20,),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, (MaterialPageRoute(builder: (context)=>const Focuspage())));
                    },
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}