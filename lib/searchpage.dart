import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SearchBar(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 10,
              shrinkWrap: true,
              padding:const EdgeInsets.only(top: 55),
              physics: const NeverScrollableScrollPhysics(),
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