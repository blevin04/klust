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
            return const HomepageData();
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

class HomepageData extends StatefulWidget {
  const HomepageData({super.key});

  @override
  State<HomepageData> createState() => _HomepageDataState();
}

class _HomepageDataState extends State<HomepageData> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Placeholder(
              fallbackHeight: MediaQuery.of(context).size.height/2.5,
            ),
            ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  //alignment: Alignment.center,
                  padding:const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                  ),
                  child:const Text("Details"),
                );
              },
            ),
            const Divider(),
            const Text("User Name"),
            const Text("Bio"),
            const Placeholder(fallbackHeight: 200,)
          ],
        ),
      ),
    );
  }
}