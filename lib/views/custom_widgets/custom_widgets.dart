import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/chart_data.dart';
import '../../model/triangle_painter.dart';
import '../details_screen/details_screen.dart';

class CustomWidgets{

  final List<ChartData> chartData = [
    ChartData('IT Beratung', '', 42, const Color(0xFFE20F00)),
    ChartData('Service', '', 30, Colors.grey),
    ChartData('Support', '', 15, Colors.grey[700]),
    ChartData('Installation', '',  9, Colors.grey[600]),
    ChartData("Reparatunen", '',  3, Colors.redAccent)
  ];


  SingleChildScrollView rowCard(){
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
            child: Flex(
              direction: Axis.horizontal,
              children: [
                SizedBox(
                  child: Card(
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide.none
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 5, left: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Auftragseingang", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w900, fontSize: 18),),
                                Text("Heute vs. Vorjahrestag", style: TextStyle(color: Colors.grey[700], fontSize: 10.0),)
                              ],
                            ),
                          ),
                          //const SizedBox(height: 10 ,),
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text("61.912 \u{20AC}", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF1B2031), fontSize: 30),)),
                          ),
                          //const SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text("42.749", style: TextStyle(height: 0,color: Color(0xFF878787), fontSize: 24),),
                                    const SizedBox(width: 5,),
                                    Column(
                                      children: [
                                        CustomPaint(
                                          painter: TrianglePainter(
                                            color: Colors.green, // triangle color
                                            direction: 'top', // triangle direction
                                          ),
                                          size: const Size(13, 12), // triangle size
                                        ),
                                        const SizedBox(height: 4,),
                                        const Text("+ 9.02", style: TextStyle(fontSize: 8),)
                                      ],
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10,),
    //       GestureDetector(
    //       onTap: (){
    //       Get.to(const DetailsScreen(),
    //       transition: Transition.downToUp,
    //       );
    //       },
    //       child: SizedBox(
    //       height: 138,
    //       width: 184,
    //       child: Card(
    //       elevation: 0.0,
    //       shape: const RoundedRectangleBorder(
    //       side: BorderSide.none
    //       ),
    //       color: Colors.white,
    //       child: Padding(
    //       padding: const EdgeInsets.only(top: 8.0, right: 10),
    //       child: Column(
    //       children: [
    //       Padding(
          //       padding: const EdgeInsets.only(right: 24.0),
          // child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          // children: [
          // const Text("Umsatz", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w900, fontSize: 18),),
          // Text("Heute vs. Vorjahrestag", style: TextStyle(color: Colors.grey[700], fontSize: 10.0),)
          // ],
        // ),
        // ),
        // //const SizedBox(height: 10 ,),
        // const Align(
        // alignment: Alignment.bottomRight,
        // child: Text("49.528 \u{20AC}", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF1B2031), fontSize: 30),)),
        // //const SizedBox(height: 5,),
        // Align(
        // alignment: Alignment.bottomRight,
        // child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        // children: [
        // const Text("54.729", style: TextStyle(color: Color(0xFF878787), fontSize: 24),),
        // const SizedBox(width: 5,),
        // Column(
        // children: [
        // CustomPaint(
        // painter: TrianglePainter(
        // color: Colors.red, // triangle color
        // direction: 'bottom', // triangle direction
        // ),
        // size: const Size(13, 12), // triangle size
        // ),
        // const SizedBox(height: 4,),
        // const Text("+ 9.02", style: TextStyle(fontSize: 8),)
    // ],
          // ),
          // ],
          // ))
          // ],
          // ),
          // ),
          // ),
          // ),
          // ),
        ],
      ),
    );
  }

  SingleChildScrollView rowCard1(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              Get.to(const DetailsScreen(),
                transition: Transition.downToUp,
              );
            },
            child: Flex(
              direction: Axis.horizontal,
              children: [
                SizedBox(
                  child: Card(
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide.none
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 5, left: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 24.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Umsatz", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w900, fontSize: 18),),
                                Text("Heute vs. Vorjahrestag", style: TextStyle(color: Colors.grey[700], fontSize: 10.0),)
                              ],
                            ),
                          ),
                          //const SizedBox(height: 10 ,),
                          const Align(
                              alignment: Alignment.bottomRight,
                              child: Text("49.528 \u{20AC}", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF1B2031), fontSize: 30),)),
                          //const SizedBox(height: 5,),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const Text("54.729", style: TextStyle(height: 0,color: Color(0xFF878787), fontSize: 24),),
                                  const SizedBox(width: 5,),
                                  Column(
                                    children: [
                                      CustomPaint(
                                        painter: TrianglePainter(
                                          color: Colors.red, // triangle color
                                          direction: 'bottom', // triangle direction
                                        ),
                                        size: const Size(13, 12), // triangle size
                                      ),
                                      const SizedBox(height: 4,),
                                      const Text("+ 9.02", style: TextStyle(fontSize: 8),)
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10,),
          const SizedBox(height: 10,),
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
            child: Flex(
              direction: Axis.horizontal,
              children: [
                SizedBox(
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 15, right: 5, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Abwesenheit", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w700),),
                          Text("Heute", style: TextStyle(color: Colors.grey[700], fontSize: 8.0, height: 0),),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0,),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("3", style: TextStyle(fontSize: 60, color: Color(0xFF1B2031), fontWeight: FontWeight.bold, height: 0),),
                                    Text("Krank", style: TextStyle(color: Color(0xFF878787), fontSize: 8),)
                                  ],
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("12", style: TextStyle(fontSize: 60, color: Color(0xFF1B2031), fontWeight: FontWeight.bold, height: 0),),
                                    Text("Urlaub", style: TextStyle(color: Color(0xFF878787), fontSize: 8),)
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10,),
        //       GestureDetector(
        //       onTap: (){
        //       Get.to(const DetailsScreen(),
        //       transition: Transition.downToUp
            //       );
            //       },
            //       child: SizedBox(
            //       height: 138,
            //       width: 184,
            //       child: Card(
            //       elevation: 0.0,
            //       shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10)
            //       ),
            //       color: Colors.white,
            //       child: Stack(
            //       children: [
    //       Padding(
          //       padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 16),
          // child: SizedBox(
          // height: 100,
          // child: Column(
          // children: [
          // const Text("Top Artikel", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.bold, fontSize: 12),),
          // Text("Heute", style: TextStyle(color: Colors.grey[700], fontSize: 8.0),),
          // ],
          // ),
          // ),
          // ),
          // SfCircularChart(
          // legend: const Legend(
            // padding: 10,
            // itemPadding: 3.0,
            // isVisible: true,
            // textStyle: TextStyle(fontSize: 8),
            // iconHeight: 5,
            // iconWidth: 5,
            // // Legend will be placed at the left
            // position: LegendPosition.left
            // ),
            // title: ChartTitle(
            // alignment: ChartAlignment.near,
            // text: "_",
            // textStyle: const TextStyle(fontSize: 12, color: Colors.white)
            // ),
            // series: <CircularSeries>[
            // // Render pie chart
            // DoughnutSeries<ChartData, String>(
            // dataSource: chartData,
            // xValueMapper: (ChartData data, _) => data.month,
            // yValueMapper: (ChartData data, _) => data.sales,
            // legendIconType: LegendIconType.circle,
            // innerRadius: '70%',
            // explode: true,
            // // Explode all the segments
            // explodeAll: true,
            // pointColorMapper: (ChartData data, _) => data.color,
            // //dataLabelSettings: DataLabelSettings(isVisible: true),
            // )
        // ],
        // //legend: Legend(isVisible: true),
        // ),
        // const Padding(
        // padding: EdgeInsets.only(right: 40.0, top: 40),
        // child: Align(
        // alignment: Alignment.bottomRight,
        // child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
            // children: [
            // Text(
            // 'AuftragScan',
            // style: TextStyle(
            // fontSize: 4,
            // color: Colors.black,
            // ),
            // ),
            // Text(
            // '101.977,50 \u{20AC}',
            // style: TextStyle(
            // fontSize: 4,
            // color: Colors.black,
            // ),
            // ),
            // ],
            // ),
            // ),
            // ),
            // ],
            // )
            // //Image.asset("assets/images/pie_chart.png", width: double.infinity, height: double.infinity,),
            // ),
            // ),
            // ),
        ],
      ),
    );
  }

  SingleChildScrollView circularCard1(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Get.to(const DetailsScreen(),
                  transition: Transition.downToUp
              );
            },
            child: Column(
              children: [
                SizedBox(
                  height: 138,
                  width: 180,
                  child: Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 16),
                            child: Column(
                              children: [
                                const Text("Top Artikel", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.bold, fontSize: 12),),
                                Text("Heute", style: TextStyle(color: Colors.grey[700], fontSize: 8.0),),
                              ],
                            ),
                          ),
                          SfCircularChart(
                            annotations: <CircularChartAnnotation>[
                              CircularChartAnnotation(
                                  widget: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'AuftragScan',
                                        style: TextStyle(
                                          fontSize: 4,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        '101.977,50 \u{20AC}',
                                        style: TextStyle(
                                          fontSize: 4,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),)
                            ],
                            legend: const Legend(
                                padding: 10,
                                itemPadding: 3.0,
                                isVisible: true,
                                textStyle: TextStyle(fontSize: 8),
                                iconHeight: 5,
                                iconWidth: 5,
                                // Legend will be placed at the left
                                position: LegendPosition.left
                            ),
                            title: ChartTitle(
                                alignment: ChartAlignment.near,
                                text: "_",
                                textStyle: const TextStyle(fontSize: 12, color: Colors.white)
                            ),
                            series: <CircularSeries>[
                              // Render pie chart
                              DoughnutSeries<ChartData, String>(
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.month,
                                yValueMapper: (ChartData data, _) => data.sales,
                                pointColorMapper: (ChartData data, _) => data.color,
                                legendIconType: LegendIconType.circle,
                                radius: '120%',
                                innerRadius: '60%',
                                explode: true,
                                explodeAll: true
                                //dataLabelSettings: DataLabelSettings(isVisible: true),
                              )
                            ],
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }

  Flex barChartCard(String? text){
    return Flex(
      direction: Axis.vertical,
      children: [
        SizedBox(
          height: 138,
          width: 373,
          child: Card(
            shape: const RoundedRectangleBorder(
            ),
            color: Colors.white,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(const DetailsScreen(),
                        transition: Transition.downToUp
                    );
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 16),
                        child: SizedBox(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Sales Pipeline", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.bold, fontSize: 12),),
                              Text("Gewichteter Umsatz je Sales-Phase", style: TextStyle(color: Colors.grey[700], fontSize: 8.0),),
                            ],
                          ),
                        ),
                      ),
                      SfCartesianChart(
                        plotAreaBorderWidth: 0.0,
                        title: ChartTitle(
                            alignment: ChartAlignment.near,
                            text: "",
                            textStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                        ),
                        series: <ChartSeries<ChartData, String>> [
                          ColumnSeries<ChartData, String>(
                            color: const Color(0xFFE20F00),
                            name: 'Sales',
                            dataSource: [
                              ChartData('Leads', 'Hello', 58, null),
                              ChartData('Kontakt','Hello', 25, null),
                              ChartData('Präsentation','Hello', 10, null),
                              ChartData('Angebot','Hello', 20, null),
                              ChartData('Nachfass','Hello', 50, null),
                              ChartData("Abgeschlossen",'Hello', 30, null)
                            ],
                            xValueMapper: (ChartData data, _) => data.month,
                            yValueMapper: (ChartData data, _) => data.sales,
                          )
                        ],
                        primaryXAxis: CategoryAxis(
                            labelStyle: const TextStyle(fontSize: 8),
                            majorGridLines: const MajorGridLines(width: 0),
                          axisLine: const AxisLine(color: Colors.white),
                          majorTickLines: const MajorTickLines(color: Colors.white)
                        ),
                        primaryYAxis: NumericAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                            isVisible: false
                        ),
                        tooltipBehavior: TooltipBehavior(enable: true),
                      ),
                    ],
                  ),
                )
            ),
          ),
        ),
        const SizedBox(height: 10,),
      ],
    );
  }

  GestureDetector longCards(){
    return GestureDetector(
      onTap: (){
        Get.to(const DetailsScreen(),
            transition: Transition.downToUp
        );
      },
      child: Flex(
        direction: Axis.vertical,
        children: [
          SizedBox(
            height: 150,
            width: 375,
            child: Card(
              elevation: 0.0,
              shape: const RoundedRectangleBorder(

              ),
              color: Colors.white,
              child: Image.asset("assets/images/chart.png", width: double.infinity, height: double.infinity,),
            ),
          ),
        ],
      ),
    );
  }
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