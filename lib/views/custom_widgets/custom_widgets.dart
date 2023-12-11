import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/chart_data.dart';
import '../../model/triangle_painter.dart';
import '../details_screen/details_screen.dart';

class CustomWidgets{

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
            child: SizedBox(
              height: 138,
              width: 184,
              child: Card(
                elevation: 0.0,
                shape: const RoundedRectangleBorder(
                    side: BorderSide.none
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 5),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Auftragseingang", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w700, fontSize: 16),),
                            Text("Heute vs. Vorjahrestag", style: TextStyle(color: Colors.grey[700], fontSize: 10.0),)
                          ],
                        ),
                      ),
                      //const SizedBox(height: 10 ,),
                      const Align(
                          alignment: Alignment.bottomRight,
                          child: Text("61.912 \u{20AC}", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF1B2031), fontSize: 30),)),
                      //const SizedBox(height: 5,),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text("42.749", style: TextStyle(color: Color(0xFF878787), fontSize: 24),),
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
                          ))
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
            child: SizedBox(
              height: 138,
              width: 184,
              child: Card(
                elevation: 0.0,
                shape: const RoundedRectangleBorder(
                    side: BorderSide.none
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Umsatz", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w700, fontSize: 14),),
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
                              const Text("54.729", style: TextStyle(color: Color(0xFF878787), fontSize: 24),),
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 15, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Abwesenheit", style: TextStyle(color: Color(0xFFE20F00), fontWeight: FontWeight.w700),),
                      Text("Heute", style: TextStyle(color: Colors.grey[700], fontSize: 8.0),),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0,),
                        child: Row(
                          children: [
                            Text("3", style: TextStyle(fontSize: 60, color: Color(0xFF1B2031), fontWeight: FontWeight.bold),),
                            SizedBox(width: 40,),
                            Text("12", style: TextStyle(fontSize: 60, color: Color(0xFF1B2031), fontWeight: FontWeight.bold),),
                          ],
                        ),
                      )
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
                child: Image.asset("assets/images/pie_chart.png", width: double.infinity, height: double.infinity,),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox barChartCard(String? text){
    return SizedBox(
      height: 150,
      width: 387,
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
              child: SfCartesianChart(
                title: ChartTitle(
                    alignment: ChartAlignment.near,
                    text: "Sales Pipeline",
                    textStyle: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)
                ),
                series: <ChartSeries<ChartData, String>> [
                  ColumnSeries<ChartData, String>(
                    color: Colors.red,
                    name: 'Sales',
                    dataSource: [
                      ChartData('Leads', 58),
                      ChartData('Feb', 25),
                      ChartData('Mar', 10),
                      ChartData('Apr', 20),
                      ChartData('May', 50),
                      ChartData("June", 30)
                    ],
                    xValueMapper: (ChartData data, _) => data.month,
                    yValueMapper: (ChartData data, _) => data.sales,
                  )
                ],
                primaryXAxis: CategoryAxis(
                ),
                primaryYAxis: NumericAxis(
                    isVisible: false
                ),
                tooltipBehavior: TooltipBehavior(enable: true),
              ),
            )
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
          elevation: 0.0,
          shape: const RoundedRectangleBorder(

          ),
          color: Colors.white,
          child: Image.asset("assets/images/chart.png", width: double.infinity, height: double.infinity,),
        ),
      ),
    );
  }
  }