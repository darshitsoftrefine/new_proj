import 'package:bavaris/views/custom_widgets/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reorderables/reorderables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  List<Widget> dragCard = [
    CustomWidgets().rowCard(),
    CustomWidgets().rowCard1(),
    CustomWidgets().barChartCard('Sales Pipeline'),
    CustomWidgets().circularCard(),
    CustomWidgets().circularCard1(),
    CustomWidgets().longCards()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: const Color(0xFFE20F00),
        centerTitle: true,
        title: Image.asset("assets/images/splashText.png",
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.width / 2,),
      ),
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
          child: ReorderableWrap(
            children: dragCard,
            onReorder: (oldIndex, newIndex) {
              setState(() {
                Widget card = dragCard.removeAt(oldIndex);
                dragCard.insert(newIndex, card);
              });
            },
          ),
          ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }



  GestureDetector bottomBar(){
    return GestureDetector(
      onTap: (){
        showCupertinoModalPopup(context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.zero,
              child: CupertinoActionSheet(
                cancelButton: CupertinoActionSheetAction(onPressed: () {
                  Get.back();
                },
                  child: const Text("Abbrechen", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),),),

                actions: [
                  CupertinoActionSheetAction(
                    onPressed: (){}, child:
                  const Center(child: Text("Bitte wahlen Sie einen Zebraum aus", style: TextStyle(fontSize: 12, color: Colors.grey),)),
                  ),

                  CupertinoActionSheetAction(onPressed: (){}, child:
                  const Text("Heute", style: TextStyle(fontSize: 16, color: Colors.black),),
                  ),
                  CupertinoActionSheetAction(onPressed: (){
                    //Get.to(GesternPage());
                  }, child:
                  const Text("Gestern", style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  ),
                  CupertinoActionSheetAction(onPressed: (){
                    //Get.to(DiesePage());
                  }, child:
                  const Text("Diese Woche", style: TextStyle(fontSize: 16, color: Colors.black),),),

                  CupertinoActionSheetAction(onPressed: (){
                    //Get.to(DieserPage());
                  }, child:
                  const Text("Dieser Monat", style: TextStyle(fontSize: 16, color: Colors.black),),),

                  CupertinoActionSheetAction(onPressed: (){
                    //Get.to(DieserJahrPage());
                  }, child:
                  const Text("Dieser Jahr", style: TextStyle(fontSize: 16, color: Colors.black),),),

                ],
              ),
            );
          },
        );
      },
      child: Container(
        width: 50,
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0xFFE20F00),
        ),
        child: const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Center(
            child: Text("Heute", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}