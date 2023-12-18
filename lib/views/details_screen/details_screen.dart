import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../model/chart_data.dart';
import '../custom_widgets/custom_widgets.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});

  final List<ChartData> chartData = [
    ChartData('IT-Beratung', '', 42, const Color(0xFFE20F00)),
    ChartData('Service', '', 30, Colors.grey),
    ChartData('Support', '', 15, Colors.grey[700]),
    ChartData('Installation', '', 9, Colors.grey[600]),
    ChartData("Reparatunen", '', 3, Colors.redAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[600],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100.0,
          backgroundColor: const Color(0xFFE20F00),
          centerTitle: true,
          title: Image.asset("assets/images/splashText.png",
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.width / 2,),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 10),
                  child: Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black54
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0, right: 8.0, top: 18.0, bottom: 1),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Top Artikel", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, height: 0.0),),
                                    Text("Heute", style: TextStyle(color: Colors.grey[700], fontSize: 12.0, height: 0.0),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 350,
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: SfCircularChart(
                                  annotations: <CircularChartAnnotation>[
                                    CircularChartAnnotation(
                                      widget: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Artikelketgorie',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            '101.977,50 \u{20AC}',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),)
                                  ],
                                  legend: Legend(
                                      padding: 10,
                                      itemPadding: 9.0,
                                      isVisible: true,
                                      textStyle: TextStyle(fontSize: 16, color: Colors.grey[400]),
                                      iconHeight: 15,
                                      iconWidth: 15,
                                      position: LegendPosition.left
                                  ),
                                  // title: ChartTitle(
                                  //     alignment: ChartAlignment.near,
                                  //     text: "Top Artikel",
                                  //     textStyle: const TextStyle(fontSize: 18, color: Colors.white, height: 0.0)
                                  // ),

                                  series: <CircularSeries>[
                                    // Render pie chart
                                    DoughnutSeries<ChartData, String>(
                                      dataSource: chartData,
                                      xValueMapper: (ChartData data, _) => data.month,
                                      yValueMapper: (ChartData data, _) => data.sales,
                                      pointColorMapper: (ChartData data, _) => data.color,
                                      legendIconType: LegendIconType.circle,
                                      radius: '80%',
                                      innerRadius: '60%',
                                      explode: true,
                                      explodeIndex: null,
                                      explodeOffset: "1.9%",
                                      explodeAll: true,
                                      //dataLabelSettings: DataLabelSettings(isVisible: true),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      CustomWidgets().details('IT-Beratung', '42.702,00 \u{20AC}'),
                      const SizedBox(height: 15,),
                      CustomWidgets().details('Service', '30.894,00 \u{20AC}'),
                      const SizedBox(height: 15,),
                      CustomWidgets().details('Support', '15.434,07 \u{20AC}'),
                      const SizedBox(height: 15,),
                      CustomWidgets().details('Installation', '9.664,00 \u{20AC}'),
                      const SizedBox(height: 15,),
                      CustomWidgets().details('Schulung', '3.283,43 \u{20AC}'),
                      const SizedBox(height: 10,),
                      const Divider(color: Colors.grey,),
                      const SizedBox(height: 10,),
                      CustomWidgets().details('Summe', '101.977,50 \u{20AC}'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Container(
            width: 50,
            height: 60,
            decoration: const BoxDecoration(
              color: Color(0xFFE20F00),
            ),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 18.0, top: 5),
              child: Center(
                child: Text("Zuruck", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        )
    );
  }
}
