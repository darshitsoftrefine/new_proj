import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/chart_data.dart';
import '../../model/triangle_painter.dart';
import '../details_screen/details_screen.dart';

class CustomWidgets {

  final List<ChartData> chartData = [
    ChartData('IT Beratung', '', 42, const Color(0xFFE20F00)),
    ChartData('Service', '', 30, Colors.grey),
    ChartData('Support', '', 15, Colors.grey[700]),
    ChartData('Installation', '', 9, Colors.grey[600]),
    ChartData("Reparatunen", '', 3, Colors.redAccent)
  ];


  SingleChildScrollView rowCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => DetailsScreen(),
                transition: Transition.downToUp,
              );
            },
            child: Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: SizedBox(
                  child: Card(
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                        side: BorderSide.none
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, right: 8, left: 8, bottom: 8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Auftragseingang", style: TextStyle(
                                    color: Color(0xFFE20F00),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                    height: 0.0),),
                                Text("Heute vs. Vorjahrestag", style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 10.0,
                                    height: 0.0),)
                              ],
                            ),
                          ),
                          //const SizedBox(height: 10 ,),
                          const Padding(
                            padding: EdgeInsets.only(right: 2.0, left: 15.0),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text("61.912 \u{20AC}", style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF1B2031),
                                    fontSize: 30),)),
                          ),
                          //const SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 5.0, left: 40),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text("42.749", style: TextStyle(
                                        height: 0,
                                        color: Color(0xFF878787),
                                        fontSize: 24),),
                                    const SizedBox(width: 5,),
                                    Column(
                                      children: [
                                        CustomPaint(
                                          painter: TrianglePainter(
                                            color: Colors.green,
                                            // triangle color
                                            direction: 'top', // triangle direction
                                          ),
                                          size: const Size(
                                              13, 12), // triangle size
                                        ),
                                        const SizedBox(height: 4,),
                                        const Text("+ 9.02",
                                          style: TextStyle(fontSize: 8),)
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
              ),
            ),
          ),
          const SizedBox(width: 10,),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }

  SingleChildScrollView rowCard1() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(DetailsScreen(),
                    transition: Transition.downToUp,
                  );
                },
                child: Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: SizedBox(
                      child: Card(
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(
                            side: BorderSide.none
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12.0,
                              right: 10,
                              left: 10,
                              bottom: 8),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 24.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Umsatz", style: TextStyle(
                                        color: Color(0xFFE20F00),
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18,
                                        height: 0.0),),
                                    Text("Heute vs. Vorjahrestag",
                                      style: TextStyle(color: Colors.grey[700],
                                          fontSize: 10.0,
                                          height: 0.0),)
                                  ],
                                ),
                              ),
                              //const SizedBox(height: 10 ,),
                              const Padding(
                                padding: EdgeInsets.only(left: 13.0),
                                child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text("49.528 \u{20AC}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF1B2031),
                                          fontSize: 30),)),
                              ),
                              //const SizedBox(height: 5,),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 39.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text("54.729", style: TextStyle(
                                            height: 0,
                                            color: Color(0xFF878787),
                                            fontSize: 24),),
                                        const SizedBox(width: 5,),
                                        Column(
                                          children: [
                                            CustomPaint(
                                              painter: TrianglePainter(
                                                color: Colors.red,
                                                // triangle color
                                                direction: 'bottom', // triangle direction
                                              ),
                                              size: const Size(
                                                  13, 12), // triangle size
                                            ),
                                            const SizedBox(height: 4,),
                                            const Text("+ 9.02",
                                              style: TextStyle(fontSize: 8),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
          const SizedBox(width: 10,),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }

  SingleChildScrollView circularCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(DetailsScreen(),
                  transition: Transition.downToUp
              );
            },
            child: Flexible(
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Card(
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 15, right: 10, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Abwesenheit", style: TextStyle(
                              color: Color(0xFFE20F00),
                              fontWeight: FontWeight.w700,
                              height: 0.0),),
                          Text("Heute", style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 8.0,
                              height: 0),),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0,),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("3", style: TextStyle(fontSize: 60,
                                        color: Color(0xFF1B2031),
                                        fontWeight: FontWeight.bold,
                                        height: 0),),
                                    Text("Krank", style: TextStyle(
                                        color: Color(0xFF878787),
                                        fontSize: 8,
                                        height: 0.0),)
                                  ],
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("12", style: TextStyle(fontSize: 60,
                                        color: Color(0xFF1B2031),
                                        fontWeight: FontWeight.bold,
                                        height: 0),),
                                    Text("Urlaub", style: TextStyle(
                                        color: Color(0xFF878787),
                                        fontSize: 8,
                                        height: 0.0),)
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
              ),
            ),
          ),
          const SizedBox(width: 10,),
        ],
      ),
    );
  }

  SingleChildScrollView pieChartCard() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(DetailsScreen(),
                      transition: Transition.downToUp
                  );
                },
                child: Column(
                  children: [
                    Card(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, left: 5, bottom: 5),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 8.0, top: 8.0, bottom: 1),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        const Text("Top Artikel",
                                          style: TextStyle(
                                              color: Color(0xFFE20F00),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              height: 0.0),),
                                        Text("Heute", style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 8.0,
                                            height: 0.0),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 80,
                                width: 170,
                                child: SfCircularChart(
                                  annotations: <CircularChartAnnotation>[
                                    CircularChartAnnotation(
                                      widget: const Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
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
                                  // title: ChartTitle(
                                  //     alignment: ChartAlignment.far,
                                  //     text: "_",
                                  //     textStyle: const TextStyle(fontSize: 12, color: Colors.white)
                                  // ),

                                  series: <CircularSeries>[
                                    // Render pie chart
                                    DoughnutSeries<ChartData, String>(
                                        dataSource: chartData,
                                        xValueMapper: (ChartData data,
                                            _) => data.month,
                                        yValueMapper: (ChartData data,
                                            _) => data.sales,
                                        pointColorMapper: (ChartData data,
                                            _) => data.color,
                                        legendIconType: LegendIconType.circle,
                                        radius: '120%',
                                        innerRadius: '60%',
                                        explode: true,
                                        explodeIndex: null,
                                        explodeOffset: "1.9%",
                                        explodeAll: true
                                      //dataLabelSettings: DataLabelSettings(isVisible: true),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,)
            ],
          ),
          const SizedBox(height: 10,),
          const SizedBox(width: 10,)
        ],
      ),
    );
  }

  SingleChildScrollView barChartCard(String? text) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(DetailsScreen(),
                  transition: Transition.downToUp
              );
            },
            child: Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: SizedBox(
                  child: Card(
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 8.0, bottom: 0),
                            child: SizedBox(
                              height: 33,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Sales Pipeline", style: TextStyle(
                                      color: Color(0xFFE20F00),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      height: 0.0),),
                                  Text("Gewichteter Umsatz je Sales-Phase",
                                    style: TextStyle(color: Colors.grey[700],
                                        fontSize: 8.0,
                                        height: 0),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 88,
                            width: 350,
                            child: SfCartesianChart(
                              plotAreaBorderWidth: 0.0,
                              // title: ChartTitle(
                              //     alignment: ChartAlignment.near,
                              //     text: "Sales Pipeline",
                              //     textStyle: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)
                              // ),
                              series: <ChartSeries<ChartData, String>>[
                                ColumnSeries<ChartData, String>(
                                  color: const Color(0xFFE20F00),
                                  name: 'Sales',
                                  dataSource: [
                                    ChartData('Leads', 'Hello', 58, null),
                                    ChartData('Kontakt', 'Hello', 25, null),
                                    ChartData(
                                        'Präsentation', 'Hello', 10, null),
                                    ChartData('Angebot', 'Hello', 20, null),
                                    ChartData('Nachfass', 'Hello', 50, null),
                                    ChartData(
                                        "Abgeschlossen", 'Hello', 30, null)
                                  ],
                                  xValueMapper: (ChartData data, _) =>
                                  data.month,
                                  yValueMapper: (ChartData data, _) =>
                                  data.sales,
                                )
                              ],
                              primaryXAxis: CategoryAxis(
                                  labelStyle: const TextStyle(fontSize: 8),
                                  majorGridLines: const MajorGridLines(
                                      width: 0),
                                  axisLine: const AxisLine(color: Colors.grey),
                                  majorTickLines: const MajorTickLines(
                                      color: Colors.white)
                              ),
                              primaryYAxis: NumericAxis(
                                  majorGridLines: const MajorGridLines(
                                      width: 0),
                                  isVisible: false
                              ),
                              tooltipBehavior: TooltipBehavior(enable: true),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const SizedBox(width: 10,),
        ],
      ),
    );
  }

  GestureDetector longCards() {
    return GestureDetector(
      onTap: () {
        Get.to(DetailsScreen(),
            transition: Transition.downToUp
        );
      },
      child: Flexible(
        child: SizedBox(
            width: 380,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Card(
                elevation: 0.0,
                shape: const RoundedRectangleBorder(
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 25),
                  child: Row(
                      children: [
                        const Stack(
                          children: [
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: CircleAvatar(
                                backgroundColor: Color(0xFFE20F00),
                              ),
                            ),
                            Positioned(
                              top: 12,
                              right: 20,
                              left: 18,
                              child: SizedBox(
                                width: 15,
                                height: 10,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: 15,
                              left: 25,
                              child: Text("S", style: TextStyle(
                                  fontSize: 40, color: Colors.white),),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 120,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Icon(Icons.home),
                                    Text("Holstein GiroBusiness M",
                                      style: TextStyle(fontSize: 16),)
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text("DE 78 2135 2240 0189 9044 77",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 10),),
                                      const Text("66.747,14 \u{20AC}",
                                        style: TextStyle(
                                            color: Color(0xFFE20F00),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),),
                                      Text(
                                          "Zuletzt aktualisiert: 05.09.2023, 02:00 Uhr",
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 10))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            )
        ),
      ),
    );
  }

  Row details(String text, String price){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
        Text(price, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),

      ],
    );
  }
}