import 'package:bavaris/views/details_screen/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Image.asset("assets/images/splashText.png",
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.width / 2,),
      ),
      body: Padding(padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              rowCards(),
              const SizedBox(height: 15,),
              longCard("Sales Pipeline"),
              const SizedBox(height: 15,),
              circularCard(),
              const SizedBox(height: 15,),
              longCards(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomBar(),
    );
  }

  SingleChildScrollView rowCards(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
             Get.to(() => const DetailsScreen(),
               transition: Transition.downToUp,
             );
            },
            child: const SizedBox(
              height: 138,
              width: 184,
              child: Card(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    side: BorderSide.none
                ),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Auftragseingang", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 10 ,),
                      Align(
                        alignment: Alignment.bottomRight,
                          child: Text("61.912 \u{20AC}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),)),
                      SizedBox(height: 5,),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text("42.749", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),))
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector(
            onTap: (){
              Get.to(const DetailsScreen(),
                  transition: Transition.downToUp,
              );
            },
            child: const SizedBox(
              height: 138,
              width: 184,
              child: Card(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    side: BorderSide.none
                ),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Umsetz", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView circularCard(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Get.to(const DetailsScreen(),
                  transition: Transition.downToUp
              );
            },
            child: SizedBox(
              height: 138,
              width: 184,
              child: Card(
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Abwesenheit", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20,),
          GestureDetector(
            onTap: (){
              Get.to(const DetailsScreen(),
                  transition: Transition.downToUp
              );
            },
            child: SizedBox(
              height: 138,
              width: 184,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.white,
                child: Image.asset("assets/images/pie_chart.png", width: double.infinity, height: double.infinity,),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector longCard(String? text){
    return GestureDetector(
      onTap: (){
        Get.to(const DetailsScreen(),
            transition: Transition.downToUp
        );
      },
      child: SizedBox(
        height: 150,
        width: 387,
        child: Card(
          shape: const RoundedRectangleBorder(

          ),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text!, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }

  GestureDetector longCards(){
    return GestureDetector(
      onTap: (){
        Get.to(const DetailsScreen(),
            transition: Transition.downToUp
        );
      },
      child: SizedBox(
        height: 150,
        width: 387,
        child: Card(
          shape: const RoundedRectangleBorder(

          ),
          color: Colors.white,
          child: Image.asset("assets/images/chart.png", width: double.infinity,),
        ),
      ),
    );
  }

  GestureDetector bottomBar(){
    return GestureDetector(
      onTap: (){
        showCupertinoModalPopup(context: context,
          useRootNavigator: false,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.zero,
              child: CupertinoActionSheet(
                cancelButton: CupertinoActionSheetAction(onPressed: () {
                  Get.back();
                },
                  child: const Text("Abbrechen", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16),),),

                actions: [
                  CupertinoActionSheetAction(onPressed: (){}, child:
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
          color: Colors.red,
        ),
        child: const Padding(
          padding: EdgeInsets.only(bottom: 18.0),
          child: Center(
            child: Text("Heute", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}