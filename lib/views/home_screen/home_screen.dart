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
    //CustomWidgets().rowCard1(),
    CustomWidgets().barChartCard('Sales Pipeline'),
    CustomWidgets().circularCard(),
    //CustomWidgets().circularCard1(),
    CustomWidgets().longCards()
  ];

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


  // SingleChildScrollView rowCards(){
  //   return SingleChildScrollView(
  //     scrollDirection: Axis.horizontal,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         GestureDetector(
  //           onTap: (){
  //            Get.to(() => const DetailsScreen(),
  //              transition: Transition.downToUp,
  //            );
  //           },
  //           child: SizedBox(
  //             height: 138,
  //             width: 184,
  //             child: Card(
  //               elevation: 0.0,
  //               shape: const RoundedRectangleBorder(
  //                   side: BorderSide.none
  //               ),
  //               color: Colors.white,
  //               child: Padding(
  //                 padding: const EdgeInsets.only(top: 8.0, right: 5),
  //                 child: Column(
  //                   children: [
  //                     Padding(
  //                       padding: const EdgeInsets.only(right: 4.0),
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.start,
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           const Text("Auftragseingang", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w700, fontSize: 16),),
  //                           Text("Heute vs. Vorjahrestag", style: TextStyle(color: Colors.grey[700], fontSize: 10.0),)
  //                         ],
  //                       ),
  //                     ),
  //                     //const SizedBox(height: 10 ,),
  //                     const Align(
  //                       alignment: Alignment.bottomRight,
  //                         child: Text("61.912 \u{20AC}", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF1B2031), fontSize: 30),)),
  //                     //const SizedBox(height: 5,),
  //                     Align(
  //                         alignment: Alignment.bottomRight,
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.end,
  //                           children: [
  //                             const Text("42.749", style: TextStyle(color: Color(0xFF878787), fontSize: 24),),
  //                             const SizedBox(width: 5,),
  //                             Column(
  //                               children: [
  //                                 CustomPaint(
  //                                   painter: TrianglePainter(
  //                                     color: Colors.green, // triangle color
  //                                     direction: 'top', // triangle direction
  //                                   ),
  //                                   size: const Size(13, 12), // triangle size
  //                                 ),
  //                                 const SizedBox(height: 4,),
  //                                 const Text("+ 9.02", style: TextStyle(fontSize: 8),)
  //                               ],
  //                             ),
  //                           ],
  //                         ))
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //         const SizedBox(width: 20,),
  //         GestureDetector(
  //           onTap: (){
  //             Get.to(const DetailsScreen(),
  //                 transition: Transition.downToUp,
  //             );
  //           },
  //           child: SizedBox(
  //             height: 138,
  //             width: 184,
  //             child: Card(
  //               elevation: 0.0,
  //               shape: const RoundedRectangleBorder(
  //                   side: BorderSide.none
  //               ),
  //               color: Colors.white,
  //               child: Padding(
  //                 padding: const EdgeInsets.only(top: 8.0, right: 10),
  //                 child: Column(
  //                   children: [
  //                     Padding(
  //                       padding: const EdgeInsets.only(right: 24.0),
  //                       child: Column(
  //                         mainAxisAlignment: MainAxisAlignment.start,
  //                         crossAxisAlignment: CrossAxisAlignment.start,
  //                         children: [
  //                           const Text("Umsatz", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w700, fontSize: 14),),
  //                           Text("Heute vs. Vorjahrestag", style: TextStyle(color: Colors.grey[700], fontSize: 10.0),)
  //                         ],
  //                       ),
  //                     ),
  //                     //const SizedBox(height: 10 ,),
  //                     const Align(
  //                         alignment: Alignment.bottomRight,
  //                         child: Text("49.528 \u{20AC}", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF1B2031), fontSize: 30),)),
  //                     //const SizedBox(height: 5,),
  //                     Align(
  //                         alignment: Alignment.bottomRight,
  //                         child: Row(
  //                           mainAxisAlignment: MainAxisAlignment.end,
  //                           children: [
  //                             const Text("54.729", style: TextStyle(color: Color(0xFF878787), fontSize: 24),),
  //                             const SizedBox(width: 5,),
  //                             Column(
  //                               children: [
  //                                 CustomPaint(
  //                                   painter: TrianglePainter(
  //                                     color: Colors.red, // triangle color
  //                                     direction: 'bottom', // triangle direction
  //                                   ),
  //                                   size: const Size(13, 12), // triangle size
  //                                 ),
  //                                 const SizedBox(height: 4,),
  //                                 const Text("+ 9.02", style: TextStyle(fontSize: 8),)
  //                               ],
  //                             ),
  //                           ],
  //                         ))
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // SingleChildScrollView circularCard(){
  //   return SingleChildScrollView(
  //     scrollDirection: Axis.horizontal,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         GestureDetector(
  //           onTap: (){
  //             Get.to(const DetailsScreen(),
  //                 transition: Transition.downToUp
  //             );
  //           },
  //           child: SizedBox(
  //             height: 138,
  //             width: 184,
  //             child: Card(
  //               elevation: 0.0,
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(10)
  //               ),
  //               color: Colors.white,
  //               child: Padding(
  //                 padding: const EdgeInsets.only(top: 10.0, left: 15, right: 5),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     const Text("Abwesenheit", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w700),),
  //                     Text("Heute", style: TextStyle(color: Colors.grey[700], fontSize: 8.0),),
  //                     const Padding(
  //                       padding: EdgeInsets.only(left: 5.0,),
  //                       child: Row(
  //                         children: [
  //                           Text("3", style: TextStyle(fontSize: 60, color: Color(0xFF1B2031), fontWeight: FontWeight.bold),),
  //                           SizedBox(width: 40,),
  //                           Text("12", style: TextStyle(fontSize: 60, color: Color(0xFF1B2031), fontWeight: FontWeight.bold),),
  //                         ],
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //         const SizedBox(width: 20,),
  //         GestureDetector(
  //           onTap: (){
  //             Get.to(const DetailsScreen(),
  //                 transition: Transition.downToUp
  //             );
  //           },
  //           child: SizedBox(
  //             height: 138,
  //             width: 184,
  //             child: Card(
  //               elevation: 0.0,
  //               shape: RoundedRectangleBorder(
  //                   borderRadius: BorderRadius.circular(10)
  //               ),
  //               color: Colors.white,
  //               child: Image.asset("assets/images/pie_chart.png", width: double.infinity, height: double.infinity,),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  // GestureDetector barChartCard(String? text){
  //   return GestureDetector(
  //     onTap: (){
  //       Get.to(const DetailsScreen(),
  //           transition: Transition.downToUp
  //       );
  //     },
  //     child: SizedBox(
  //       height: 150,
  //       width: 387,
  //       child: Card(
  //         shape: const RoundedRectangleBorder(
  //         ),
  //         color: Colors.white,
  //         child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: SfCartesianChart(
  //             title: ChartTitle(
  //               alignment: ChartAlignment.near,
  //               text: "Sales Pipeline",
  //               textStyle: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)
  //             ),
  //             series: <ChartSeries<ChartData, String>> [
  //               ColumnSeries<ChartData, String>(
  //                 color: Colors.red,
  //                 name: 'Sales',
  //                 dataSource: [
  //                   ChartData('Leads', 58),
  //                   ChartData('Feb', 25),
  //                   ChartData('Mar', 10),
  //                   ChartData('Apr', 20),
  //                   ChartData('May', 50),
  //                   ChartData("June", 30)
  //                 ],
  //                 xValueMapper: (ChartData data, _) => data.month,
  //                 yValueMapper: (ChartData data, _) => data.sales,
  //               )
  //             ],
  //             primaryXAxis: CategoryAxis(
  //             ),
  //             primaryYAxis: NumericAxis(
  //               isVisible: false
  //             ),
  //             tooltipBehavior: TooltipBehavior(enable: true),
  //           )
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // GestureDetector longCards(){
  //   return GestureDetector(
  //     onTap: (){
  //       Get.to(const DetailsScreen(),
  //           transition: Transition.downToUp
  //       );
  //     },
  //     child: SizedBox(
  //       height: 150,
  //       width: 387,
  //       child: Card(
  //         elevation: 0.0,
  //         shape: const RoundedRectangleBorder(
  //
  //         ),
  //         color: Colors.white,
  //         child: Image.asset("assets/images/chart.png", width: double.infinity, height: double.infinity,),
  //       ),
  //     ),
  //   );
  // }
  //
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
          color: Colors.red,
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