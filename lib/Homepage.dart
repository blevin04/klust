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
          borderRadius: BorderRadius.circular(20),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Placeholder(
              fallbackHeight: MediaQuery.of(context).size.height/2.5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                // padding:const EdgeInsets.only(left: 10,right: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    //alignment: Alignment.center,
                    margin:const EdgeInsets.only(left: 10),
                    padding:const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 255, 255, 245),
                      border: Border.all(color: Colors.grey)
                    ),
                    child:const Text("Details"),
                  );
                },
              ),
            ),
            const Divider(),
            const Text("User Name",style: TextStyle(fontSize: 29),),
            const Text("Bio",style: TextStyle(fontSize: 18),),
            const Placeholder(fallbackHeight: 200,)
          ],
        ),
      ),
    );
  }
}