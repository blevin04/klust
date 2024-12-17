import 'package:flutter/material.dart';
import 'package:klust/inboxpage.dart';
import 'package:klust/profilepage.dart';
import 'package:klust/searchpage.dart';
import 'package:klust/shopHome.dart';

ValueNotifier<int> currentPage = ValueNotifier(0);
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading:InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Profilepage()));
          },
          child: const CircleAvatar()),
        title:const Text("Klust"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Shophome()));
          }, icon:const Icon(Icons.shopping_cart))
        ],
      ),
      body: ListenableBuilder(
        listenable:currentPage ,
        builder: (BuildContext context, child) {
          if (currentPage.value == 0) {
            return const Homepage();
          }
          if (currentPage.value == 1) {
            return const Searchpage();
          }
          return const Inboxpage();
        },
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){
            currentPage.value = 0;
          }, icon: const Icon(Icons.home)),
          IconButton(onPressed: (){
            currentPage.value = 1;
          }, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){
            currentPage.value = 2;
          }, icon: const Icon(Icons.message))
        ],
      ),
    );
  }
}